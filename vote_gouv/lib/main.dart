import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:vote_gouv/animation/launch_animation.dart';
import 'package:vote_gouv/backend/citizen_info.dart';
import 'package:vote_gouv/constants/citizen.dart';
import 'package:vote_gouv/pages/home_page.dart';
import 'constants/colors.dart';

late Box box;

Future<void> main() async {
  await Hive.initFlutter();
  box = await Hive.openBox('CitizenBox');
  Hive.registerAdapter(CitizenInfoAdapter());
  box.add(citizenIllyas);
  box.add(citizenThomas);
  box.add(citizenValentin);
  box.add(citizenKaan);
  box.add(citizenAntoine);
  box.add(citizenMohammed);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/launch': (context) => const LaunchAnimPage(),
        '/home': (context) => const MyHomePage(),
        //'/vote':(context) =>
        //'/result':(context) =>
      },
      home: const LaunchAnimPage(),
    );
  }
}
