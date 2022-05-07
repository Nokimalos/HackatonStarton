import 'package:flutter/material.dart';
import 'package:vote_gouv/animation/launch_animation.dart';
import 'package:vote_gouv/pages/home_page.dart';
import 'constants/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/launch':(context) => const LaunchAnimPage(),
        '/home': (context) => const MyHomePage(),
        //'/vote':(context) =>
        //'/result':(context) =>
      },
      home: const LaunchAnimPage(),
    );
  }
}