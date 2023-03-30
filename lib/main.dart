import 'package:rafika_aplikasi/pages/explore.dart';
import 'package:rafika_aplikasi/pages/splash.dart';
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
      title: 'rafika_aplikasi',
      home: SplashPage(),
      color: Color.fromARGB(255, 156, 151, 151),

    );
  }
}