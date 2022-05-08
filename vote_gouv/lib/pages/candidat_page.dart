import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vote_gouv/constants/colors.dart';
import 'package:vote_gouv/pages/ResultPage.dart';
import 'package:vote_gouv/pages/vote_page.dart';
import 'package:vote_gouv/pages/home_page.dart';
import 'package:vote_gouv/widget/bottom_nav_bar.dart';

class MyMelenchonPage extends StatefulWidget {
  const MyMelenchonPage({Key? key}) : super(key: key);

  @override
  State<MyMelenchonPage> createState() => _MyMelenchonPage();
}

class MyMarinePage extends StatefulWidget {
  const MyMarinePage({Key? key}) : super(key: key);

  @override
  State<MyMarinePage> createState() => _MyMarinePage();
}

class MyNathaliePage extends StatefulWidget {
  const MyNathaliePage({Key? key}) : super(key: key);

  @override
  State<MyNathaliePage> createState() => _MyNathaliePage();
}

class MyNicolasPage extends StatefulWidget {
  const MyNicolasPage({Key? key}) : super(key: key);

  @override
  State<MyNicolasPage> createState() => _MyNicolasPage();
}

class MyAnnePage extends StatefulWidget {
  const MyAnnePage({Key? key}) : super(key: key);

  @override
  State<MyAnnePage> createState() => _MyAnnePage();
}

class MyYannickPage extends StatefulWidget {
  const MyYannickPage({Key? key}) : super(key: key);

  @override
  State<MyYannickPage> createState() => _MyYannickPage();
}

class MyJeanPage extends StatefulWidget {
  const MyJeanPage({Key? key}) : super(key: key);

  @override
  State<MyJeanPage> createState() => _MyJeanPage();
}

class MyEmmanuelPage extends StatefulWidget {
  const MyEmmanuelPage({Key? key}) : super(key: key);

  @override
  State<MyEmmanuelPage> createState() => _MyEmmanuelPage();
}

class MyValeriePage extends StatefulWidget {
  const MyValeriePage({Key? key}) : super(key: key);

  @override
  State<MyValeriePage> createState() => _MyValeriePage();
}

class MyPhilippePage extends StatefulWidget {
  const MyPhilippePage({Key? key}) : super(key: key);

  @override
  State<MyPhilippePage> createState() => _MyPhilippePage();
}

class MyFabienPage extends StatefulWidget {
  const MyFabienPage({Key? key}) : super(key: key);

  @override
  State<MyFabienPage> createState() => _MyFabienPage();
}

class MyZemmourPage extends StatefulWidget {
  const MyZemmourPage({Key? key}) : super(key: key);

  @override
  State<MyZemmourPage> createState() => _MyZemmourPage();
}

class _MyMelenchonPage extends State<MyMelenchonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        elevation: 0.0,
      ),
      body: Container(
        width: 500,
        color: const Color.fromARGB(255, 255, 243, 243),
        child: Column(
          children: [
            Image.asset("assets/images/Jean-Luc-Melenchon.jpg"),
              const SizedBox(height: 20),
              const Text(
                "Jean-Luc Mélenchon",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                ),
              ),
              const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.all(40),
                child:
                  Text(
                    "Face aux grands bouleversements du monde, nous ne pouvons plus attendre. Il faut transformer en profondeur la société et construire l\’harmonie des êtres humains entre eux et avec la nature. Nous sommes prêts à gouverner pour concrétiser la devise de notre République : « Liberté, Égalité, Fraternité ».",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.bebasNeue(
                      textStyle: const TextStyle(
                        letterSpacing: 1,
                        fontSize: 22,
                        color: Colors.black,
                      ),
                    ),
                  ),
            )
          ],
        ),
      ),
    );
  }
}

class _MyMarinePage extends State<MyMarinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        elevation: 0.0,
      ),
      body: Container(
        width: 500,
        color: const Color.fromARGB(255, 255, 255, 243),
        child: Column(
          children: [
            Image.asset("assets/images/marine.jpg"),
            const SizedBox(height: 20),
                const Text(
                  "Marine Le Pen",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                ),
              Padding(
              padding: const EdgeInsets.all(40),
                child:
                  Text(
                    "Faire de la sécurité partout et pour tous une priorité du quinquennat. Rétablir les peines planchers. Supprimer toute possibilité de réduction et d'aménagements de peine, en particulier pour les violences contre les personnes. Instituer une présomption de légitime défense pour les forces de l'ordre",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.bebasNeue(
                      textStyle: const TextStyle(
                        letterSpacing: 1,
                        fontSize: 22,
                        color: Colors.black,
                      ),
                    ),
                  ),
            )
          ],
        ),
      ),
    );
  }
}

class _MyNathaliePage extends State<MyNathaliePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        elevation: 0.0,
      ),
      body: Container(
        width: 500,
        color: Color.fromARGB(255, 255, 255, 243),
        child: Column(
          children: [
            Image.asset("assets/images/Nathalie-Arthaud.jpg"),
            const SizedBox(height: 20),
            const Text(
              "Nathalie Arthaud",
              style: TextStyle(
                color: Colors.black,
                fontSize: 35,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40),
                child:
                  Text(
                    "Répartition du travail entre tous, sans baisse des salaires. Augmentation générale des salaires de base. Salaires, allocations, pensions au-dessus de 2000 euros par mois. Indexation des augmentations de salaires et des pensions sur l'inflation",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.bebasNeue(
                      textStyle: const TextStyle(
                        letterSpacing: 1,
                        fontSize: 22,
                        color: Colors.black,
                      ),
                    ),
                  ),
            )
          ],
        ),
      ),
    );
  }
}

class _MyNicolasPage extends State<MyNicolasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        elevation: 0.0,
      ),
      body: Container(
        width: 500,
        color: Color.fromARGB(255, 255, 255, 243),
        child: Column(
          children: [
            Image.asset("assets/images/nicolas.jpg"),
            const SizedBox(height: 20),
            const Text(
              "Nicolas Dupont-Aignan",
              style: TextStyle(
                color: Colors.black,
                fontSize: 35,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40),
                child:
                  Text(
                    "Regcours à la pratique référendaire sur les sujets clés. Instauration du référendum d'initiative populaire ou citoyenne (RIC) à partir de 500.000 signatures. Prise en compte du vote blanc dans les résultats des élections. Retour au septennat avec possibilité d'un referendum révocatoire d'initiative citoyenne à mi-mandat",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.bebasNeue(
                      textStyle: const TextStyle(
                        letterSpacing: 1,
                        fontSize: 22,
                        color: Colors.black,
                      ),
                    ),
                  ),
            )
          ],
        ),
      ),
    );
  }
}

class _MyAnnePage extends State<MyAnnePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        elevation: 0.0,
      ),
      body: Container(
        width: 500,
        color: Color.fromARGB(255, 255, 255, 243),
        child: Column(
          children: [
            Image.asset("assets/images/hidalgo.jpg"),
            const SizedBox(height: 20),
            const Text(
              "Anne Hidalgo",
              style: TextStyle(
                color: Colors.black,
                fontSize: 35,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40),
                child:
                  Text(
                    "Augmenter le Smic de 200 euros nets. Limiter à 1 à 20 l'écart maximal dans les entreprises entre la rémunération la plus basse et la plus haute. Pénalités pour les entreprises qui ne respectent pas l'égalité salariale hommes-femmes",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.bebasNeue(
                      textStyle: const TextStyle(
                        letterSpacing: 1,
                        fontSize: 22,
                        color: Colors.black,
                      ),
                    ),
                  ),
            )
          ],
        ),
      ),
    );
  }
}

class _MyYannickPage extends State<MyYannickPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        elevation: 0.0,
      ),
      body: Container(
        width: 500,
        color: Color.fromARGB(255, 255, 255, 243),
        child: Column(
          children: [
            Image.asset("assets/images/jadot.jpg"),
            const SizedBox(height: 20),
            const Text(
              "Yannick Jadot",
              style: TextStyle(
                color: Colors.black,
                fontSize: 35,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40),
                child:
                  Text(
                    "10 milliards d'euros par an pour la rénovation thermique des passoires énergétiques. Fin de la vente de véhicules thermiques neufs dès 2030. 4 milliards d'euros chaque année pour rénover le réseau ferroviaire et ouvrir des petites lignes de train",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.bebasNeue(
                      textStyle: const TextStyle(
                        letterSpacing: 1,
                        fontSize: 22,
                        color: Colors.black,
                      ),
                    ),
                  ),
            )
          ],
        ),
      ),
    );
  }
}

class _MyJeanPage extends State<MyJeanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        elevation: 0.0,
      ),
      body: Container(
        width: 500,
        color: Color.fromARGB(255, 255, 255, 243),
        child: Column(
          children: [
            Image.asset("assets/images/lasalle.jpg"),
            const SizedBox(height: 20),
            const Text(
              "Jean Lassalle",
              style: TextStyle(
                color: Colors.black,
                fontSize: 35,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40),
                child:
                  Text(
                    "Instaurer le RIC, le Référendum d'initiative citoyenne. Reconnaître le vote blanc. Créer un service national universel, militaire ou civil. Revoir la durée des mandats présidentiels et législatifs",                    
                    textAlign: TextAlign.center,
                    style: GoogleFonts.bebasNeue(
                      textStyle: const TextStyle(
                        letterSpacing: 1,
                        fontSize: 22,
                        color: Colors.black,
                      ),
                    ),
                  ),
            )
          ],
        ),
      ),
    );
  }
}

class _MyEmmanuelPage extends State<MyEmmanuelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        elevation: 0.0,
      ),
      body: Container(
        width: 500,
        color: Color.fromARGB(255, 255, 255, 243),
        child: Column(
          children: [
            Image.asset("assets/images/macron.jpg"),
            const SizedBox(height: 20),
            const Text(
              "Emmanuel Macron",
              style: TextStyle(
                color: Colors.black,
                fontSize: 35,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40),
                child:
                  Text(
                    "Réinvestir dans un «modèle complet d'armée», doubler le nombre de réservistes. Renforcer l'indépendance agricole : favoriser l'installation et l'accompagnement de jeunes agriculteurs, revoir la stratégie agricole européenne «De la ferme à la fourchette». Des états généraux pour le droit à l'information, garantie d'un «modèle économique viable pour une information libre et indépendante»",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.bebasNeue(
                      textStyle: const TextStyle(
                        letterSpacing: 1,
                        fontSize: 22,
                        color: Colors.black,
                      ),
                    ),
                  ),
            )
          ],
        ),
      ),
    );
  }
}

class _MyValeriePage extends State<MyValeriePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        elevation: 0.0,
      ),
      body: Container(
        width: 500,
        color: Color.fromARGB(255, 255, 255, 243),
        child: Column(
          children: [
            Image.asset("assets/images/pecresse.jpg"),
            const SizedBox(height: 20),
            const Text(
              "Valérie Pécresse",
              style: TextStyle(
                color: Colors.black,
                fontSize: 35,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40),
                child:
                  Text(
                    "Augmenter dans les 5 ans les salaires nets inférieurs à 2,2 SMIC de 10%, hors inflation. Poursuite de la réforme de l'assurance chômage en renforçant la dégressivité des allocations. Lutte accrue contre les fraudes sociales et fiscales",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.bebasNeue(
                      textStyle: const TextStyle(
                        letterSpacing: 1,
                        fontSize: 22,
                        color: Colors.black,
                      ),
                    ),
                  ),
            )
          ],
        ),
      ),
    );
  }
}

class _MyPhilippePage extends State<MyPhilippePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        elevation: 0.0,
      ),
      body: Container(
        width: 500,
        color: Color.fromARGB(255, 255, 255, 243),
        child: Column(
          children: [
            Image.asset("assets/images/poutou.jpg"),
            const SizedBox(height: 20),
            const Text(
              "Philippe Poutou",
              style: TextStyle(
                color: Colors.black,
                fontSize: 35,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40),
                child:
                  Text(
                    "400 euros de plus pour tous : SMIC à 1800 euros net ; indexation des salaires sur le coût de la vie. 32 heures de travail sur quatre jours sans perte de salaire; sixième semaine de congés payés. Revenu d'autonomie pour les jeunes de 16 à 25 ans",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.bebasNeue(
                      textStyle: const TextStyle(
                        letterSpacing: 1,
                        fontSize: 22,
                        color: Colors.black,
                      ),
                    ),
                  ),
            )
          ],
        ),
      ),
    );
  }
}

class _MyFabienPage extends State<MyFabienPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        elevation: 0.0,
      ),
      body: Container(
        width: 500,
        color: Color.fromARGB(255, 255, 255, 243),
        child: Column(
          children: [
            Image.asset("assets/images/roussel.jpg"),
            const SizedBox(height: 20),
            const Text(
              "Fabien Roussel",
              style: TextStyle(
                color: Colors.black,
                fontSize: 35,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40),
                child:
                  Text(
                    "Augmentation générale des salaires, des minima sociaux, des pensions : Smic à 1500 € net (1923 € brut). Aucune pension inférieure à 1200 € net. Un droit universel à l'emploi",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.bebasNeue(
                      textStyle: const TextStyle(
                        letterSpacing: 1,
                        fontSize: 22,
                        color: Colors.black,
                      ),
                    ),
                  ),
            )
          ],
        ),
      ),
    );
  }
}

class _MyZemmourPage extends State<MyZemmourPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        elevation: 0.0,
      ),
      body: Container(
        width: 500,
        color: Color.fromARGB(255, 255, 255, 243),
        child: Column(
          children: [
            Image.asset("assets/images/zemour.jpg"),
            const SizedBox(height: 20),
            const Text(
              "Éric Zemmour",
              style: TextStyle(
                color: Colors.black,
                fontSize: 35,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40),
                child:
                  Text(
                    "Instaurer des peines planchers pour chaque crime et délit. Rétablir la peine de perpétuité réelle. Réduire les remises de peine",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.bebasNeue(
                      textStyle: const TextStyle(
                        letterSpacing: 1,
                        fontSize: 22,
                        color: Colors.black,
                      ),
                    ),
                  ),
            )
          ],
        ),
      ),
    );
  }
}
