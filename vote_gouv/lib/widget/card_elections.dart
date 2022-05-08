import 'package:blur/blur.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';



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
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 30,
              ),
            ),
        ],
      ),
    );
  }
}

class MyElectionCard extends StatelessWidget {
  const MyElectionCard({ Key? key, required this.imagelink, required this.name, required this.color, required this.onTap }) : super(key: key);

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
            ),
            Text(
              name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 30,
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