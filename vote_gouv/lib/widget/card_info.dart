import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCard extends StatelessWidget {
  const MyCard({ Key? key, required this.imagelink, required this.name, required this.color, required this.onTap }) : super(key: key);

  final AssetImage imagelink;
  final String name;
  final Color color;
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
              image: imagelink,
              child: InkWell(
                onTap: onTap,
              ),
              height: 180,
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(color, BlendMode.srcOver)
            ),
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