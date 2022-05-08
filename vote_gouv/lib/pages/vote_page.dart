import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
              const SizedBox(height: 15),
              Text(
                "Les élections",
                  style: GoogleFonts.bebasNeue(
                  textStyle: const TextStyle(
                    letterSpacing: 6,
                    fontSize: 45,
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              MyElectionCard(
                  imagelink: const AssetImage("assets/images/présidentielles.jpg"),
                  name: 'Présidentielles',
                  color: grise,
                  onTap: () {}),
              const SizedBox(height: 9),
              MyElectionCardDead(
                  imagelink: "assets/images/législatives.jpg",
                  name: 'Législatives',
                  color: grise,
                  onTap: () {}),
              const SizedBox(height: 9),
              MyElectionCardDead(
                  imagelink: "assets/images/municipales.jpg",
                  name: 'Municipales',
                  color: grise,
                  onTap: () {}),
              const SizedBox(height: 9),
              MyElectionCardDead(
                  imagelink: "assets/images/européennes.jpg",
                  name: 'Européennes',
                  color: grise,
                  onTap: () {}),
            ],
          )),
    );
  }
}
