library socket_service;

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:socket_io_client/socket_io_client.dart';
import 'package:bloc/bloc.dart' show Closable;

import 'package:campus_tracker/src/config.dart';
import 'package:campus_tracker/src/models/notice/notice.dart';
import 'package:campus_tracker/src/services/notification/notification_service.dart';

part 'service.dart';
part 'notice_socket.dart';

class SocketService extends Closable {
  late final Socket socket;

  final _onErrorListeners = <dynamic Function(dynamic)>{};

  SocketService() {
    print('creating socket');
    socket = io(
      AppConfig.apiUrl,
      OptionBuilder().setTransports(['websocket']).disableAutoConnect().build(),
    );
  }

  void onInit(void Function(Socket socket) handler) {
    socket.onConnect((_) {
      print('connected');
    });
    socket.onError((error) {
      print('error: $error');
      for (var listener in _onErrorListeners) listener(error);
    });

    handler(socket);

    socket.connect();
  }

  void onError(dynamic Function(dynamic) handler) =>
      _onErrorListeners.add(handler);

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
