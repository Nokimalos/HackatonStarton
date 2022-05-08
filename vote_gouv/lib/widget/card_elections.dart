import 'package:flutter/material.dart';

import '../constants/colors.dart';



class MyElectionCardDead extends StatelessWidget {
  const MyElectionCardDead({ Key? key, required this.imagelink, required this.name, required this.color, required this.onTap }) : super(key: key);

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
              height: 130,
              fit: BoxFit.cover,
              colorFilter: ColorFilters.greyscale,
            ),
            Text(
              name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 24,
              ),
            ),
        ],
      ),
    );
  }
}

class MyElectionCard extends StatelessWidget {
  const MyElectionCard({ Key? key, required this.imagelink, required this.name, required this.color, required this.onTap }) : super(key: key);

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
              height: 130,
              fit: BoxFit.cover,
            ),
            Text(
              name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 24,
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