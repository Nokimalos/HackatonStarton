import 'package:flutter/material.dart';
import 'package:vote_gouv/animation/launch_animation.dart';
import 'package:vote_gouv/pages/home_page.dart';
import 'package:vote_gouv/pages/ResultPage.dart';
import 'constants/colors.dart';

Future<void> main() async {
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/launch': (context) => const LaunchAnimPage(),
        '/home': (context) => const MyHomePage(),
        //'/vote':(context) =>
        '/result': (context) => const ResultPage(),
      },
      home: const LaunchAnimPage(),
    );
  }
}
