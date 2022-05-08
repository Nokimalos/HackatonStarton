import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vote_gouv/auth/biometric_auth.dart';
import 'package:vote_gouv/constants/colors.dart';

import '../widget/card_info.dart';

class ConnectedPage extends StatelessWidget {
  const ConnectedPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                const SizedBox(height: 25),
                Text(
                  "Choisissez votre candidats",
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
                    imagelink: const AssetImage(
                        "assets/images/Jean-Luc-Melenchon.jpg"),
                    name: 'Jean-Luc-Melenchon',
                    color: pClearRed,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const BiometricAuthentication()));
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
                              builder: (context) =>
                                  const BiometricAuthentication()));
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
                              builder: (context) =>
                                  const BiometricAuthentication()));
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
                              builder: (context) =>
                                  const BiometricAuthentication()));
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
                              builder: (context) =>
                                  const BiometricAuthentication()));
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
                              builder: (context) =>
                                  const BiometricAuthentication()));
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
                              builder: (context) =>
                                  const BiometricAuthentication()));
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
                              builder: (context) =>
                                  const BiometricAuthentication()));
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
                              builder: (context) =>
                                  const BiometricAuthentication()));
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
                              builder: (context) =>
                                  const BiometricAuthentication()));
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
                              builder: (context) =>
                                  const BiometricAuthentication()));
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
                              builder: (context) =>
                                  const BiometricAuthentication()));
                    }),
              ],
            )),
        padding: const EdgeInsets.all(25.0),
      ),
    );
  }
}
