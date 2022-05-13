import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCard extends StatelessWidget {
  const MyCard(
      {Key? key,
      required this.imagelink,
      required this.name,
      required this.color,
      required this.onTap,
      required this.id})
      : super(key: key);

  final AssetImage imagelink;
  final String name;
  final Color color;
  final void Function() onTap;
  final int id;
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Ink.image(
              image: imagelink,
              child: InkWell(
                onTap: onTap,
              ),
              height: 180,
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(color, BlendMode.srcOver)),
          Text(
            name,
            style: GoogleFonts.bebasNeue(
              textStyle: const TextStyle(
                fontSize: 34,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyBlankCard extends StatelessWidget {
  const MyBlankCard({Key? key, required this.onTap, required this.name}) : super(key: key);

  final String name;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Ink.image(
              image: const AssetImage("assets/images/white.jpg"),
              child: InkWell(
                onTap: onTap,
              ),
              height: 180,
              fit: BoxFit.cover,
              colorFilter: const ColorFilter.mode(
                  Color.fromARGB(255, 233, 226, 226), BlendMode.srcOver)),
          Text(
            name,
            style: GoogleFonts.bebasNeue(
              textStyle: const TextStyle(
                fontSize: 34,
                color: Color.fromARGB(255, 12, 11, 11),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
