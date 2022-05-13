import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vote_gouv/constants/colors.dart';
import 'package:vote_gouv/pages/ResultPage.dart';
import 'package:vote_gouv/pages/connected_page.dart';
import 'package:vote_gouv/pages/vote_page.dart';
import 'package:vote_gouv/widget/bottom_nav_bar.dart';
import 'package:vote_gouv/widget/detail_page.dart';
import 'candidat_page.dart';
import '../widget/card_info.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static final List<Widget> _widgetOptions = <Widget>[
    const ListCandidate(),
    const MyVotePage(),
    const ResultPage(),
    const ConnectedPage(),
  ];

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavBar(
        color: clearBlue,
        onTap: _onItemTapped,
        selectedIndex: _selectedIndex,
      ),
      body: Container(
        child: _widgetOptions.elementAt(_selectedIndex),
        padding: const EdgeInsets.all(25.0),
      ),
    );
  }
}

class ListCandidate extends StatefulWidget {
  const ListCandidate({
    Key? key,
  }) : super(key: key);

  @override
  State<ListCandidate> createState() => _ListCandidateState();
}

class _ListCandidateState extends State<ListCandidate> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> listCard = <Widget> [
      MyCard(
        id: 1,
          imagelink: const AssetImage("assets/images/Jean-Luc-Melenchon.jpg"),
          name: 'Jean-Luc-Melenchon',
          color: pClearRed,
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MyMelenchonPage()));
          }),
      MyCard(
          id: 2,
          imagelink: const AssetImage("assets/images/marine.jpg"),
          name: 'Marine Le Pen',
          color: pBlackBlue,
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MyMarinePage()));
          }),
      MyCard(
          id: 3,
          imagelink: const AssetImage("assets/images/Nathalie-Arthaud.jpg"),
          name: 'Nathalie Arthaud',
          color: pBlackRed,
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MyNathaliePage()));
          }),
      MyCard(
          id: 4,
          imagelink: const AssetImage("assets/images/nicolas.jpg"),
          name: 'Nicolas Dupont-Aignan',
          color: pClearBlue,
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MyNicolasPage()));
          }),
      MyCard(
          id: 5,
          imagelink: const AssetImage("assets/images/hidalgo.jpg"),
          name: 'Anne Hidalgo',
          color: pClearRed,
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MyAnnePage()));
          }),
      MyCard(
          id: 6,
          imagelink: const AssetImage("assets/images/jadot.jpg"),
          name: 'Yannick Jadot',
          color: pClearGreen,
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MyYannickPage()));
          }),
      MyCard(
          id: 7,
          imagelink: const AssetImage("assets/images/lasalle.jpg"),
          name: 'Jean Lassalle',
          color: pClearBlue,
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MyJeanPage()));
          }),
      MyCard(
          id: 8,
          imagelink: const AssetImage("assets/images/macron.jpg"),
          name: 'Emmanuel Macron',
          color: pClearBlue,
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MyEmmanuelPage()));
          }),
      MyCard(
          id: 9,
          imagelink: const AssetImage("assets/images/pecresse.jpg"),
          name: 'Valérie Pécresse',
          color: pBlackBlue,
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MyValeriePage()));
          }),
      MyCard(
          id: 10,
          imagelink: const AssetImage("assets/images/poutou.jpg"),
          name: 'Philippe Poutou',
          color: pBlackRed,
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MyPhilippePage()));
          }),
      MyCard(
          id: 11,
          imagelink: const AssetImage("assets/images/roussel.jpg"),
          name: 'Fabien Roussel',
          color: pClearRed,
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MyFabienPage()));
          }),
      MyCard(
          id: 12,
          imagelink: const AssetImage("assets/images/zemour.jpg"),
          name: 'Éric Zemmour',
          color: pBlackBlue,
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MyZemmourPage()));
          }),
    ]..shuffle();
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(height: 25),
            Text(
              "Les candidats",
              style: GoogleFonts.bebasNeue(
                textStyle: const TextStyle(
                  letterSpacing: 6,
                  fontSize: 45,
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            const SizedBox(height: 25),
            MyBlankCard(
                    name: 'Pourquoi Voter blanc ?',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const DetailScreen()));
                    }),

  
            for (int i = 0; i < listCard.length; i++)
              listCard.elementAt(i),
          ],
        ));
  }
}
