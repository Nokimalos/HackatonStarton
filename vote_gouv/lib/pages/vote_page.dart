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
              Text("Élections", style: TextStyle(color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold, fontFamily: 'Roboto'),),
              SizedBox(height: 15),
              MyElectionCard(imagelink: AssetImage("assets/images/présidentielles.jpg"),name: 'Présidentielles', color: grise, onTap: (){}),
              SizedBox(height: 15),
              MyElectionCardDead(imagelink: AssetImage("assets/images/législatives.jpg"),name: 'Législatives', color: grise, onTap: (){}),
              SizedBox(height: 15),
              MyElectionCardDead(imagelink: AssetImage("assets/images/municipales.jpg"),name: 'Municipales', color: grise, onTap: (){}),
              SizedBox(height: 15),
              MyElectionCardDead(imagelink: AssetImage("assets/images/européennes.jpg"),name: 'Européennes', color: grise, onTap: (){}),
           ],
         )
       ),
    );
  }
}