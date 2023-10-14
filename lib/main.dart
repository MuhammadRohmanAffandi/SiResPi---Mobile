import 'package:flutter/material.dart';
import 'package:sirespi/detailResep.dart';
import 'package:sirespi/home.dart';
import 'package:sirespi/makanan.dart';
import 'package:sirespi/resep.dart';
import 'package:sirespi/search_bar.dart';
import 'package:sirespi/sigin.dart';
import 'package:sirespi/signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

// void main() {
//   runApp(const Home());
// }

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await requestPermission();
  runApp(const Signup());
}

Future<void> requestPermission() async {
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  NotificationSettings settings = await messaging.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: false,
    sound: true,
  );

// print('User granted permission: ${settings.authorizationStatus}');
  if (settings.authorizationStatus == AuthorizationStatus.authorized) {
    print('User granted permission');
  } else if (settings.authorizationStatus == AuthorizationStatus.provisional) {
    print('User granted provesional permission');
  } else {
    print('User declined or has not accepted permission');
  }
}
