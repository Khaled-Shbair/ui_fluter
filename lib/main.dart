import 'package:flutter/material.dart';
import 'package:ui_flutter/screens/launch_screen.dart';
import 'package:ui_flutter/screens/login_screen.dart';
import 'package:ui_flutter/screens/main_screen.dart';
import 'package:ui_flutter/screens/out_boarding_screen.dart';
import 'package:ui_flutter/screens/products_screen.dart';
import 'package:ui_flutter/screens/register_screen.dart';
import 'package:ui_flutter/screens/settings_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/SettingsScreen',
      routes: {
        '/LaunchScreen': (context) => const LaunchScreen(),
        '/LoginScreen': (context) => const LoginScreen(),
        '/OutBoardingScreen': (context) => const OutBoarding(),
        '/RegisterScreen': (context) => const RegisterScreen(),
        '/ProductsScreen': (context) => const ProductsScreen(),
        '/MainScreen': (context) => const MainScreen(),
        '/SettingsScreen': (context) => const SettingsScreen(),
      },
    );
  }
}
