import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:uas/screen/home_screen.dart';
import 'package:uas/screen/splash_screen.dart';

void main() async {
  await Hive.initFlutter();
  var box = await Hive.openBox('userBox');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(primarySwatch: Colors.teal),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
