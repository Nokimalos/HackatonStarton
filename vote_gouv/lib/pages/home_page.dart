import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vote_gouv/constants/colors.dart';
import 'package:vote_gouv/pages/ResultPage.dart';
import 'package:vote_gouv/pages/connected_page.dart';
import 'package:vote_gouv/pages/vote_page.dart';
import 'package:vote_gouv/widget/bottom_nav_bar.dart';
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

class ListCandidate extends StatelessWidget {
  const ListCandidate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            MyCard(
                imagelink:
                    const AssetImage("assets/images/Jean-Luc-Melenchon.jpg"),
                name: 'Jean-Luc-Melenchon',
                color: pClearRed,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyMelenchonPage(),
                    ),
                  );
                }),
            const SizedBox(height: 15),
            MyCard(
                imagelink: const AssetImage("assets/images/marine.jpg"),
                name: 'Marine Le Pen',
                color: pBlackBlue,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyMarinePage(),
                    ),
                  );
                }),
            const SizedBox(height: 15),
            MyCard(
                imagelink:
                    const AssetImage("assets/images/Nathalie-Arthaud.jpg"),
                name: 'Nathalie Arthaud',
                color: pBlackRed,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyNathaliePage(),
                    ),
                  );
                }),
            const SizedBox(height: 15),
            MyCard(
                imagelink: const AssetImage("assets/images/nicolas.jpg"),
                name: 'Nicolas Dupont-Aignan',
                color: pClearBlue,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyNicolasPage(),
                    ),
                  );
                }),
            const SizedBox(height: 15),
            MyCard(
                imagelink: const AssetImage("assets/images/hidalgo.jpg"),
                name: 'Anne Hidalgo',
                color: pClearRed,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyAnnePage(),
                    ),
                  );
                }),
            const SizedBox(height: 15),
            MyCard(
                imagelink: const AssetImage("assets/images/jadot.jpg"),
                name: 'Yannick Jadot',
                color: pClearGreen,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyYannickPage(),
                    ),
                  );
                }),
            const SizedBox(height: 15),
            MyCard(
                imagelink: const AssetImage("assets/images/lasalle.jpg"),
                name: 'Jean Lassalle',
                color: pClearBlue,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyJeanPage(),
                    ),
                  );
                }),
            const SizedBox(height: 15),
            MyCard(
                imagelink: const AssetImage("assets/images/macron.jpg"),
                name: 'Emmanuel Macron',
                color: pClearBlue,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyEmmanuelPage(),
                    ),
                  );
                }),
            const SizedBox(height: 15),
            MyCard(
                imagelink: const AssetImage("assets/images/pecresse.jpg"),
                name: 'Valérie Pécresse',
                color: pBlackBlue,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyValeriePage(),
                    ),
                  );
                }),
            const SizedBox(height: 15),
            MyCard(
                imagelink: const AssetImage("assets/images/poutou.jpg"),
                name: 'Philippe Poutou',
                color: pBlackRed,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyPhilippePage(),
                    ),
                  );
                }),
            const SizedBox(height: 15),
            MyCard(
                imagelink: const AssetImage("assets/images/roussel.jpg"),
                name: 'Fabien Roussel',
                color: pClearRed,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyFabienPage(),
                    ),
                  );
                }),
            const SizedBox(height: 15),
            MyCard(
                imagelink: const AssetImage("assets/images/zemour.jpg"),
                name: 'Éric Zemmour',
                color: pBlackBlue,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyZemmourPage(),
                    ),
                  );
                }
            ),
          ],
        ));
  }
}
