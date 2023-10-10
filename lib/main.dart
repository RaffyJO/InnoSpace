import 'package:flutter/material.dart';
import 'package:innospace/state_util.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "InnoSpace",
      navigatorKey: Get.navigatorKey,
      debugShowCheckedModeBanner: false,
    );
  }
}
