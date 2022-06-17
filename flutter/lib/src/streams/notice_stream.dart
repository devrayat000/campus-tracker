import 'dart:async';

import 'package:campus_tracker/src/models/notice/notice.dart';
import 'package:campus_tracker/src/services/notice_service/notice_service.dart';
import 'package:socket_io_client/socket_io_client.dart';

class NoticeStream {
  final StreamController<NoticeRaw> _streamController;
  final Socket _socket;
  final NoticeClient _client;

  NoticeStream(this._socket, this._client)
      : _streamController = StreamController<NoticeRaw>();

  void init() async {
    _socket.on(
      "notice:publish",
      _onNoticePublished,
    );
    _socket.onError((error) => _streamController.addError(error));

    _socket.emit('notice:initial');
    _socket.on('notice:initial', (data) => print(data));

    final notices = await _client.notices();
    print(notices);

    if (!_streamController.isClosed) {
      notices.data.forEach(
        (e) {
          final notice = NoticeRaw(
            id: e.id,
            title: e.attributes.title,
            details: e.attributes.details,
            createdAt: e.attributes.createdAt,
          );
          _streamController.add(notice);
        },
      );
    }
  }

  Stream<NoticeRaw> listen() => _streamController.stream;

  void onChange(
    void Function(NoticeRaw?) onData, {
    Function? onError,
    void Function()? onDone,
    bool? cancelOnError,
  }) =>
      _streamController.stream.listen(
        onData,
        onError: onError,
        onDone: onDone,
        cancelOnError: cancelOnError,
      );

  void _onNoticePublished(data) {
    final notice = NoticeRaw.fromJson(data);

    _streamController.add(notice);
  }

  void dispose() {
    _socket.off("notice:publish", _onNoticePublished);
    _streamController.close();
  }
}
