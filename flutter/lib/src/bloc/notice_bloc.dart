import 'package:bloc/bloc.dart';

import 'package:campus_tracker/src/models/notice/notice.dart';
import 'package:socket_io_client/socket_io_client.dart';

class NoticeCubit extends Cubit<NoticeState> {
  NoticeCubit(Socket socket) : super(NoticeInitial()) {
    socket.on(
      "notice:publish",
      (data) {
        print(data);
        // emit(state)
      },
    );
  }
}

class NoticeInitial extends NoticeState {}

class NoticeRecieved extends NoticeState {
  final List<NoticeRaw> notices;

  const NoticeRecieved(this.notices);
}

abstract class NoticeState {
  const NoticeState();
}
