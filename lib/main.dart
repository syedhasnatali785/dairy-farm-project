import 'package:flutter/material.dart';
import 'package:intern01/screens/starter_one_time_screens/all_set.dart';
import 'package:intern01/screens/starter_one_time_screens/onboarding_screen.dart';
import 'package:intern01/screens/starter_one_time_screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: SplashScreen(),
    );
  }
}
