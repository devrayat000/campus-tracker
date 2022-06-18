import 'package:flutter/foundation.dart';
import 'package:bloc/bloc.dart';

import 'package:campus_tracker/src/models/notice/notice.dart';
import 'package:campus_tracker/src/services/socket/socket_service.dart';

typedef OnAddListener = void Function(NoticeRaw);

class NoticeCubit extends Cubit<Set<NoticeRaw>> {
  final NoticeSocket _socket;

  NoticeCubit(this._socket) : super(<NoticeRaw>{});

  void init() {
    _socket.onNoticeLoad(loadItems);
    _socket.onNoticeAdd(addItem);
    _socket.onNoticeUpdate(updateItem);
    _socket.onNoticeRemove(removeItem);

    _socket.onError((error) => addError(error));

    load();
  }

  final _onAddListeners = <OnAddListener>{};

  void load() => _socket.socketService.socket.emit('notice:initial');

  void loadItems(Iterable<NoticeRaw> notices) => emit(Set.from(notices));

  void addItem(NoticeRaw notice) => emit(Set.from([notice, ...state]));

  void updateItem(NoticeRaw notice) {
    final newState = state.map((e) {
      if (e.id == notice.id) {
        return notice;
      }
      return e;
    });
    emit(Set.from(newState));
  }

  void removeItem(NoticeRaw notice) {
    state.removeWhere((e) => e.id == notice.id);
    emit(Set.from(state));
  }

  SynchronousFuture<void> reload() => SynchronousFuture(load());

  void dispose() {
    _socket.offNoticeLoad(loadItems);
    _socket.offNoticeAdd(addItem);
    _socket.offNoticeUpdate(updateItem);
    _socket.offNoticeRemove(removeItem);
  }
}
