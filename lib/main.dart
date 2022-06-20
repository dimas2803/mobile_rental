import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:uas/my_drawer_header.dart';
import 'package:uas/screen/home_screen.dart';
import 'package:uas/screen/splash_screen.dart';
import 'package:uas/my_drawer_header.dart';
import 'package:uas/widget/dashboard.dart';
import 'package:uas/widget/contacts.dart';
import 'package:uas/widget/events.dart';
import 'package:uas/widget/notes.dart';
import 'package:uas/widget/notifications.dart';
import 'package:uas/widget/privacy_policy.dart';
import 'package:uas/widget/send_feedback.dart';
import 'package:uas/widget/settings.dart';

void main() async {
  await Hive.initFlutter();
  var box = await Hive.openBox('userBox');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
