import 'package:flutter/material.dart';
import 'package:ui_fluter/screens/launch_screen.dart';
import 'package:ui_fluter/screens/login_screen.dart';
import 'package:ui_fluter/screens/out_boarding_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/launchScreen',
      routes: {
        '/launchScreen': (context) => const launchScreen(),
        '/loginScreen': (context) => const loginScreen(),
        '/outBoarding': (context) => const outBoarding(),
      },
    );
  }
}
