part of socket_service;

typedef OnAddListener = void Function(NoticeRaw notice);
typedef OnLoadListener = void Function(Iterable<NoticeRaw> notices);

class NoticeSocket extends Service {
  @override
  final SocketService socketService;

  @override
  final onErrorListeners = <dynamic Function(dynamic)>{};

  final _onLoadListeners = <OnLoadListener>{};
  final _onAddListeners = <OnAddListener>{};
  final _onUpdateListeners = <OnAddListener>{};
  final _onRemoveListeners = <OnAddListener>{};

  NoticeSocket(this.socketService) : super(socketService);

  @override
  void init() {
    socketService.onInit((socket) {
      socket.on("notice:publish", _onNoticePublished);
      socket.on("notice:update", _onNoticeUpdated);
      socket.on("notice:unpublish", _onNoticeUnpublished);
      socket.on("notice:delete", _onNoticeUnpublished);

      socket.on('notice:initial', _onLoad);
    });
  }

  void _onNoticePublished(data) async {
    final notice = NoticeRaw.fromJson(data);

    for (var listener in _onAddListeners) listener(notice);

    await createNoticeNotification(
      id: notice.id,
      body: notice.title,
    );
  }

  void _onNoticeUpdated(data) async {
    final notice = NoticeRaw.fromJson(data);

    for (var listener in _onUpdateListeners) listener(notice);
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

  @override
  void onError(dynamic Function(dynamic) callback) =>
      onErrorListeners.add(callback);

  void onNoticeLoad(OnLoadListener callback) => _onLoadListeners.add(callback);
  void onNoticeAdd(OnAddListener callback) => _onAddListeners.add(callback);
  void onNoticeUpdate(OnAddListener callback) =>
      _onUpdateListeners.add(callback);
  void onNoticeRemove(OnAddListener callback) =>
      _onRemoveListeners.add(callback);

  void offNoticeLoad(OnLoadListener callback) =>
      _onLoadListeners.remove(callback);
  void offNoticeAdd(OnAddListener callback) => _onAddListeners.remove(callback);
  void offNoticeUpdate(OnAddListener callback) =>
      _onUpdateListeners.remove(callback);
  void offNoticeRemove(OnAddListener callback) =>
      _onRemoveListeners.remove(callback);
}
