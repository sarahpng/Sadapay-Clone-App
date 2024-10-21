import 'package:sadapay/views/login_view.dart';
import 'package:sadapay/views/main_screen.dart';
import 'package:sadapay/views/more_view.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';

void main() {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  runApp(MaterialApp(
    theme: ThemeData(
      splashColor: const Color(0xFFFF7B66),
      primaryColor: const Color(0xFF01D2AF),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            letterSpacing: 5,
            color: Colors.white),
        bodySmall: TextStyle(fontSize: 16, color: Colors.white),
        bodyMedium: TextStyle(fontSize: 20, color: Colors.white),
      ),
      useMaterial3: true,
    ),
    routes: {
      '/login': (context) => const LoginScreen(),
      '/main': (context) => const MainScreen(),
      '/more': (context) => const MoreView(),
    },
    home: const SplashScreen(),
  ));
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = const Duration(seconds: 2);
    return Timer(duration, route);
  }

  route() {
    Navigator.of(context).pushNamedAndRemoveUntil('/login', (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).splashColor,
      body: Center(
          child:
              Text("SADAPAY", style: Theme.of(context).textTheme.displayLarge)),
    );
  }
}
