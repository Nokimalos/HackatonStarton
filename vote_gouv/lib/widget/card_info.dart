import 'package:flutter/material.dart';



class MyCard extends StatelessWidget {
  const MyCard({ Key? key, required this.imagelink, required this.name, required this.color }) : super(key: key);

  final AssetImage imagelink;
  final String name;
  final Color color;
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
                onTap: () {},
              ),
              height: 200,
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(color, BlendMode.srcOver)
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