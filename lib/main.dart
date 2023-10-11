import 'package:flutter/material.dart';
import 'package:innospace/button_navigator/button_navigation_bar.dart';
import 'package:innospace/core.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "InnoSpace",
      navigatorKey: Get.navigatorKey,
      routes: {
        '/home': (context) => const FloatMainNavigationView(
              initialSelectedIndex: 0,
            ),
        '/Bookings': (context) => const FloatMainNavigationView(
              initialSelectedIndex: 1,
            ),
        '/Profile': (context) => const FloatMainNavigationView(
              initialSelectedIndex: 2,
            ),
      },
      debugShowCheckedModeBanner: false,
      home: const FloatMainNavigationView(
        initialSelectedIndex: 0,
      ),
    );
  }
}
