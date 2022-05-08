import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import '../constants/colors.dart';
import '../pages/login_page.dart';


class MyElectionCardDead extends StatelessWidget {
  const MyElectionCardDead({ Key? key, required this.imagelink, required this.name, required this.color, required this.onTap }) : super(key: key);

  final String imagelink;
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
          Image.asset(
              imagelink,
              height: 130,
              width : 400,
              fit: BoxFit.cover,
            ).blurred(
              colorOpacity: 0.2,
            ),
            Text(
              name,
              style: GoogleFonts.bebasNeue(
                textStyle: const TextStyle(
                  letterSpacing: 4,
                  fontSize: 35,
                  color: Colors.white,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class MyElectionCard extends StatelessWidget {
  const MyElectionCard({ Key? key, required this.imagelink, required this.name, required this.color, required this.onTap }) : super(key: key);

  final ImageProvider imagelink;
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
              height: 130,
              width : 400,
              fit: BoxFit.cover,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Login(),
                    ),
                  );
                },
                child: const Center(
                  child: Text('YELLOW'),
                )
              ),
            ),
            Text(
              name,
              style: GoogleFonts.bebasNeue(
                textStyle: const TextStyle(
                  letterSpacing: 3,
                  fontSize: 35,
                  color: Colors.white,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class ColorFilters {
  static const greyscale = ColorFilter.matrix(<double>[
    /// greyscale filter
    0.2126, 0.7152, 0.0722, 0, 0,
    0.2126, 0.7152, 0.0722, 0, 0,
    0.2126, 0.7152, 0.0722, 0, 0,
    0, 0, 0, 1, 0
  ]);
}