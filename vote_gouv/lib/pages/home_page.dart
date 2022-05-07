import 'package:flutter/material.dart';
import 'package:vote_gouv/constants/colors.dart';
import 'package:vote_gouv/widget/bottom_nav_bar.dart';

import '../widget/card_info.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}



class _MyHomePageState extends State<MyHomePage> {
  static final List<Widget> _widgetOptions = <Widget>[

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
         padding: const EdgeInsets.all(25.0),
         child: SingleChildScrollView(
             scrollDirection: Axis.vertical,
             child: Column(
               children: [
                const SizedBox(height: 25),
                MyCard(imagelink: const AssetImage("assets/images/Jean-Luc-Melenchon.jpg"),name: 'Jean-Luc-Melenchon', color: Colors.red.withOpacity(0.5),),
                const SizedBox(height: 15),
                MyCard(imagelink: const AssetImage("assets/images/marine.jpg"),name: 'Marine Le Pen', color: Colors.red.withOpacity(0.5)),
                const SizedBox(height: 15),
                MyCard(imagelink: const AssetImage("assets/images/Nathalie-Arthaud.jpg"),name: 'Nathalie Arthaud', color: Colors.red.withOpacity(0.5)),
                const SizedBox(height: 15),
                MyCard(imagelink: const AssetImage("assets/images/nicolas.jpg"),name: 'Nicolas Dupont-Aignan', color: Colors.red.withOpacity(0.5)),
                const SizedBox(height: 15),
                MyCard(imagelink: const AssetImage("assets/images/hidalgo.jpg"),name: 'Anne Hidalgo', color: Colors.red.withOpacity(0.5)),
                const SizedBox(height: 15),
                MyCard(imagelink: const AssetImage("assets/images/jadot.jpg"),name: 'Yannick Jadot', color: Colors.red.withOpacity(0.5)),
                const SizedBox(height: 15),
                MyCard(imagelink: const AssetImage("assets/images/lasalle.jpg"),name: 'Jean Lassalle', color: Colors.red.withOpacity(0.5)),
                const SizedBox(height: 15),
                MyCard(imagelink: const AssetImage("assets/images/macron.jpg"),name: 'Emmanuel Macron', color: Colors.red.withOpacity(0.5)),
                const SizedBox(height: 15),
                MyCard(imagelink: const AssetImage("assets/images/pecresse.jpg"),name: 'Valérie Pécresse', color: Colors.red.withOpacity(0.5)),
                const SizedBox(height: 15),
                MyCard(imagelink: const AssetImage("assets/images/poutou.jpg"),name: 'Philippe Poutou', color: Colors.red.withOpacity(0.5)),
                const SizedBox(height: 15),
                MyCard(imagelink: const AssetImage("assets/images/roussel.jpg"),name: 'Fabien Roussel', color: Colors.red.withOpacity(0.5)),
                const SizedBox(height: 15),
                MyCard(imagelink: const AssetImage("assets/images/zemour.jpg"),name: 'Éric Zemmour', color: Colors.red.withOpacity(0.5)),
              ],
            )
          ),
       ),
    );
  }
}