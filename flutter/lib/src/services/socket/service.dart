part of socket_service;

abstract class Service {
  final SocketService socketService;
  @protected
  late final Set<dynamic Function(dynamic)> onErrorListeners;

  Service(this.socketService) {
    init();
  }

  @protected
  void init();

  void onError(dynamic Function(dynamic) callback);
}
