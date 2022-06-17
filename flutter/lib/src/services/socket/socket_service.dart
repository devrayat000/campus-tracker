import 'dart:async';

import 'package:campus_tracker/src/models/notice/notice.dart';
import 'package:campus_tracker/src/services/notification/notification_service.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:socket_io_client/socket_io_client.dart';
import 'package:bloc/bloc.dart' show Closable;

typedef OnAddListener = void Function(NoticeRaw notice);
typedef OnLoadListener = void Function(Iterable<NoticeRaw> notices);

class SocketService extends Closable {
  late final Socket socket;

  final _onLoadListeners = <OnLoadListener>{};
  final _onAddListeners = <OnAddListener>{};
  final _onRemoveListeners = <OnAddListener>{};
  final _onErrorListeners = <dynamic Function(dynamic)>{};

  SocketService() {
    _init();
  }

  void _init() {
    print('creating socket');
    socket = io(
      'http://10.0.2.2:1337/',
      OptionBuilder().setTransports(['websocket']).disableAutoConnect().build(),
    );

    socket.onError((data) {
      print('error: $data');
    });

    socket.onConnect((_) {
      print('connected');
    });
    socket.onError((error) {
      print(error);
      for (var listener in _onErrorListeners) listener(error);
    });

    socket.on("notice:publish", _onNoticePublished);
    socket.on("notice:unpublish", _onNoticeUnpublished);
    socket.on("notice:delete", _onNoticeUnpublished);

    socket.on('notice:initial', _onLoad);

    socket.connect();
  }

  void _onNoticePublished(data) async {
    final notice = NoticeRaw.fromJson(data);

    for (var listener in _onAddListeners) listener(notice);

    await createNoticeNotification(
      id: notice.id,
      body: notice.title,
    );
  }

  void _onNoticeUnpublished(data) async {
    final notice = NoticeRaw.fromJson(data);

    for (var listener in _onRemoveListeners) listener(notice);

    await cancelNoticeNotification(notice.id);
  }

  void _onLoad(data) async {
    final notices = (data as List<dynamic>).map((e) => NoticeRaw.fromJson(e));
    for (var listener in _onLoadListeners) listener(notices);

    final noticeBox = Hive.box('notice_notified');

    for (var notice in notices) {
      if (!noticeBox.containsKey(createNoticeId(notice.id))) {
        await createNoticeNotification(
          id: notice.id,
          body: notice.title,
        );
      }
    }
  }

  void onError(dynamic Function(dynamic) handler) =>
      _onErrorListeners.add(handler);

  void onNoticeLoad(OnLoadListener callback) => _onLoadListeners.add(callback);
  void onNoticeAdd(OnAddListener callback) => _onAddListeners.add(callback);
  void onNoticeRemove(OnAddListener callback) =>
      _onRemoveListeners.add(callback);

  void offNoticeLoad(OnLoadListener callback) =>
      _onLoadListeners.remove(callback);
  void offNoticeAdd(OnAddListener callback) => _onAddListeners.remove(callback);
  void offNoticeRemove(OnAddListener callback) =>
      _onRemoveListeners.remove(callback);

  @override
  FutureOr<void> close() {
    socket.dispose();
  }

  @override
  bool get isClosed => socket.disconnected;
}

// Socket initSocket() {
//   print('creating socket');
//   final socket = io(
//     'http://10.0.2.2:1337/',
//     OptionBuilder().setTransports(['websocket']).disableAutoConnect().build(),
//   );

//   socket.onError((data) {
//     print('error: $data');
//   });

//   socket.onConnect((_) {
//     print('connected');
//   });

//   return socket.connect();
// }
