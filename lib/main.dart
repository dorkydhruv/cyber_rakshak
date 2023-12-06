import 'package:cyber_rakshak/screens/Dashboard.dart';
import 'package:cyber_rakshak/screens/login.dart';
import 'package:cyber_rakshak/screens/splash.dart';
import 'package:cyber_rakshak/screens/start/start.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cyber Rakshak',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
      routes: {
        StartScreens.routeName: (context) => const StartScreens(),
        LoginScreen.routeName: (context) => const LoginScreen(),
        DashBoard.routename: (context) => const DashBoard(),
      },
    );
  }
}
