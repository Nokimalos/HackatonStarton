import 'package:flutter/material.dart';
import 'package:vote_gouv/constants/colors.dart';
import 'package:vote_gouv/widget/bottom_nav_bar.dart';

import '../widget/card_info.dart';

class MyVotePage extends StatefulWidget {
  const MyVotePage({Key? key}) : super(key: key);

  @override
  State<MyVotePage> createState() => _MyVotePageState();
}

class _MyVotePageState extends State<MyVotePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: const [
             SizedBox(height: 15),
             MyCard(imagelink: AssetImage("assets/images/nicolas.jpg"),name: 'Nicolas Dupont-Aignan', color: pClearBlue),
             SizedBox(height: 15),
             MyCard(imagelink: AssetImage("assets/images/hidalgo.jpg"),name: 'Anne a Hidalgo', color: pClearRed),
             SizedBox(height: 15),
             MyCard(imagelink: AssetImage("assets/images/jadot.jpg"),name: 'Yannick Jadot', color: pClearGreen),
             SizedBox(height: 15),
             MyCard(imagelink: AssetImage("assets/images/lasalle.jpg"),name: 'Jean Lassalle', color: pClearBlue),
             SizedBox(height: 15),
             MyCard(imagelink: AssetImage("assets/images/macron.jpg"),name: 'Emmanuel Macron', color: pClearBlue),
             SizedBox(height: 15),
             MyCard(imagelink: AssetImage("assets/images/pecresse.jpg"),name: 'Valérie Pécresse', color: pBlackBlue),
             SizedBox(height: 15),
             MyCard(imagelink: AssetImage("assets/images/poutou.jpg"),name: 'Philippe Poutou', color: pBlackRed),
             SizedBox(height: 15),
             MyCard(imagelink: AssetImage("assets/images/roussel.jpg"),name: 'Fabien Roussel', color: pClearRed),
             SizedBox(height: 15),
             MyCard(imagelink: AssetImage("assets/images/zemour.jpg"),name: 'Éric Zemmour', color: pBlackBlue),
           ],
         )
       ),
    );
  }
}