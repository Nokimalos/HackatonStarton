import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CandidatInfo extends StatelessWidget {
  const CandidatInfo( {Key? key, required this.imagelink, required this.name, required this.text, required this.color}) : super(key: key);

  final String imagelink;
  final String name;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize (
        preferredSize: const Size.fromHeight(25.0),
        child: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
          size: 17,
        ),
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        elevation: 0.0,
        )
      ),
    body: Padding(
      padding: const EdgeInsets.all(20),
      child:
      Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Stack (
        alignment: Alignment.center,
        children: [
          Container (
          width: 500,
        color: color,
        child: Column(
          children: [
            Image.asset(imagelink),
              const SizedBox(height: 20),
              Text(
                name,
                style: GoogleFonts.bebasNeue(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(40),
                child:
                  Text(
                    text,
                    style: const TextStyle(
                        letterSpacing: 1,
                        fontSize: 18,
                        color: Colors.black,
                        fontFamily: "roboto",
                      ),
                    ),
                  ),
          ],
        ),
      ),        ]
      )
    )
    ),
    );
  }
}
