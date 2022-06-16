import 'package:awesome_notifications/awesome_notifications.dart';

Future<void> askForPermission() async {
  final isAllowed = await AwesomeNotifications().isNotificationAllowed();

  if (isAllowed) return;

  final isPermitted =
      await AwesomeNotifications().requestPermissionToSendNotifications();
}
