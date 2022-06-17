import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
// import 'package:awesome_notifications/android_foreground_service.dart';

Future<void> initializeNotifications() async {
  await AwesomeNotifications().initialize(
    null,
    [
      NotificationChannel(
        channelKey: 'basic_notification',
        channelName: 'Basic Notification',
        channelDescription: 'Notification channel for basic tasks',
        defaultColor: const Color(0xFF9D50DD),
        ledColor: Colors.white,
      ),
      NotificationChannel(
        channelKey: 'scheduled_notification',
        channelName: 'Scheduled Notification',
        channelDescription: 'Notification channel for scheduled tasks',
        defaultColor: const Color(0xFF9D50DD),
        ledColor: Colors.white,
      ),
    ],
  );
}

Future<void> askForPermission() async {
  final isAllowed = await AwesomeNotifications().isNotificationAllowed();

  if (isAllowed) return;

  final isPermitted =
      await AwesomeNotifications().requestPermissionToSendNotifications();
}

Future<void> createNoticeNotification({
  required int id,
  required String body,
}) async {
  final _id = createNoticeId(id);
  await AwesomeNotifications().createNotification(
    content: NotificationContent(
      id: _id,
      channelKey: "basic_notification",
      title: "New notice!!! ${Emojis.smile_expressionless_face}",
      body: body,
      wakeUpScreen: true,
    ),
  );

  final noticeBox = Hive.box('notice_notified');
  noticeBox.put(_id, true);
}

Future<void> cancelNoticeNotification(int id) async {
  final _id = createNoticeId(id);
  await AwesomeNotifications().cancel(_id);

  final noticeBox = Hive.box('notice_notified');
  noticeBox.delete(_id);
}

int createNoticeId(int id) => int.parse("6969$id");
