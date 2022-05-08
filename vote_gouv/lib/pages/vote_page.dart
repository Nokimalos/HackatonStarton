import 'package:flutter/material.dart';
import 'package:vote_gouv/constants/colors.dart';
import 'package:vote_gouv/widget/bottom_nav_bar.dart';

import '../widget/card_elections.dart';
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
            children: [
              const Text("Élections", style: TextStyle(color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold, fontFamily: 'Roboto'),),
              const SizedBox(height: 15),
              MyElectionCard(imagelink: "assets/images/présidentielles.jpg",name: 'Présidentielles', color: grise, onTap: (){}),
              const SizedBox(height: 15),
              MyElectionCardDead(imagelink: "assets/images/législatives.jpg",name: 'Législatives', color: grise, onTap: (){}),
              const SizedBox(height: 15),
              MyElectionCardDead(imagelink: "assets/images/municipales.jpg",name: 'Municipales', color: grise, onTap: (){}),
              const SizedBox(height: 15),
              MyElectionCardDead(imagelink: "assets/images/européennes.jpg",name: 'Européennes', color: grise, onTap: (){}),
           ],
         )
       ),
    );
  }
}