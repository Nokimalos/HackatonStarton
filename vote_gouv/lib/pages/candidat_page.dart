import 'package:flutter/material.dart';
import 'package:vote_gouv/constants/colors.dart';
import 'package:vote_gouv/widget/candidat_info.dart';

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
    return const CandidatInfo(
        imagelink: "assets/images/Jean-Luc-Melenchon.jpg",
        name: 'Jean-Luc Mélenchon',
        text: 'Face aux grands bouleversements du monde, nous ne pouvons plus attendre. Il faut transformer en profondeur la société et construire l’harmonie des êtres humains entre eux et avec la nature. Nous sommes prêts à gouverner pour concrétiser la devise de notre République : « Liberté, Égalité, Fraternité ».',
        color: pClearRed,
      );
  }
}

class _MyMarinePage extends State<MyMarinePage> {
  //"assets/images/marine.jpg",
  //"Marine Le Pen",
  //"Faire de la sécurité partout et pour tous une priorité du quinquennat. Rétablir les peines planchers. Supprimer toute possibilité de réduction et d'aménagements de peine, en particulier pour les violences contre les personnes. Instituer une présomption de légitime défense pour les forces de l'ordre",
  @override
  Widget build(BuildContext context) {
    return const CandidatInfo(
        imagelink: "assets/images/marine.jpg",
        name: "Marine Le Pen",
        text: "Faire de la sécurité partout et pour tous une priorité du quinquennat. Rétablir les peines planchers. Supprimer toute possibilité de réduction et d'aménagements de peine, en particulier pour les violences contre les personnes. Instituer une présomption de légitime défense pour les forces de l'ordre",
        color: pBlackBlue,
      );
  }
}

class _MyNathaliePage extends State<MyNathaliePage> {
  //"assets/images/Nathalie-Arthaud.jpg"
  //"Nathalie Arthaud",
  //"Répartition du travail entre tous, sans baisse des salaires. Augmentation générale des salaires de base. Salaires, allocations, pensions au-dessus de 2000 euros par mois. Indexation des augmentations de salaires et des pensions sur l'inflation",
  @override
  Widget build(BuildContext context) {
    return const CandidatInfo(
        imagelink: "assets/images/Nathalie-Arthaud.jpg",
        name: "Nathalie Arthaud",
        text: "Répartition du travail entre tous, sans baisse des salaires. Augmentation générale des salaires de base. Salaires, allocations, pensions au-dessus de 2000 euros par mois. Indexation des augmentations de salaires et des pensions sur l'inflation",
        color: pBlackRed,
      );
  }
}

class _MyNicolasPage extends State<MyNicolasPage> {
  //"assets/images/nicolas.jpg"
  //"Nicolas Dupont-Aignan",
  //"Regcours à la pratique référendaire sur les sujets clés. Instauration du référendum d'initiative populaire ou citoyenne (RIC) à partir de 500.000 signatures. Prise en compte du vote blanc dans les résultats des élections. Retour au septennat avec possibilité d'un referendum révocatoire d'initiative citoyenne à mi-mandat",
  @override
    Widget build(BuildContext context) {
    return const CandidatInfo(
        imagelink: "assets/images/nicolas.jpg",
        name: "Nicolas Dupont-Aignan",
        text: "Regcours à la pratique référendaire sur les sujets clés. Instauration du référendum d'initiative populaire ou citoyenne (RIC) à partir de 500.000 signatures. Prise en compte du vote blanc dans les résultats des élections. Retour au septennat avec possibilité d'un referendum révocatoire d'initiative citoyenne à mi-mandat",
        color: pClearBlue,
      );
  }
}

class _MyAnnePage extends State<MyAnnePage> {
  //"assets/images/hidalgo.jpg"
  //"Anne Hidalgo",
  //"Augmenter le Smic de 200 euros nets. Limiter à 1 à 20 l'écart maximal dans les entreprises entre la rémunération la plus basse et la plus haute. Pénalités pour les entreprises qui ne respectent pas l'égalité salariale hommes-femmes",
  @override
    Widget build(BuildContext context) {
    return const CandidatInfo(
        imagelink: "assets/images/hidalgo.jpg",
        name: "Anne Hidalgo",
        text: "Augmenter le Smic de 200 euros nets. Limiter à 1 à 20 l'écart maximal dans les entreprises entre la rémunération la plus basse et la plus haute. Pénalités pour les entreprises qui ne respectent pas l'égalité salariale hommes-femmes",
        color: pClearRed,
      );
  }
}

class _MyYannickPage extends State<MyYannickPage> {
  //"assets/images/jadot.jpg"
  //"Yannick Jadot"
  //"10 milliards d'euros par an pour la rénovation thermique des passoires énergétiques. Fin de la vente de véhicules thermiques neufs dès 2030. 4 milliards d'euros chaque année pour rénover le réseau ferroviaire et ouvrir des petites lignes de train",
  @override
      Widget build(BuildContext context) {
    return const CandidatInfo(
        imagelink: "assets/images/jadot.jpg",
        name: "Yannick Jadot",
        text: "10 milliards d'euros par an pour la rénovation thermique des passoires énergétiques. Fin de la vente de véhicules thermiques neufs dès 2030. 4 milliards d'euros chaque année pour rénover le réseau ferroviaire et ouvrir des petites lignes de train",
        color: pClearGreen,
      );
  }
}

class _MyJeanPage extends State<MyJeanPage> {
  //"assets/images/lasalle.jpg"
  //"Jean Lassalle",
  //Instaurer le RIC, le Référendum d'initiative citoyenne. Reconnaître le vote blanc. Créer un service national universel, militaire ou civil. Revoir la durée des mandats présidentiels et législatifs",
  @override
  Widget build(BuildContext context) {
    return const CandidatInfo(
        imagelink: "assets/images/lasalle.jpg",
        name: "Jean Lassalle",
        text: "Instaurer le RIC, le Référendum d'initiative citoyenne. Reconnaître le vote blanc. Créer un service national universel, militaire ou civil. Revoir la durée des mandats présidentiels et législatifs",
        color: pClearBlue,
      );
  }
}

class _MyEmmanuelPage extends State<MyEmmanuelPage> {
  //"assets/images/macron.jpg"
  //"Emmanuel Macron"
  //"Réinvestir dans un «modèle complet d'armée», doubler le nombre de réservistes. Renforcer l'indépendance agricole : favoriser l'installation et l'accompagnement de jeunes agriculteurs, revoir la stratégie agricole européenne «De la ferme à la fourchette». Des états généraux pour le droit à l'information, garantie d'un «modèle économique viable pour une information libre et indépendante»",
  @override
  Widget build(BuildContext context) {
    return const CandidatInfo(
        imagelink: "assets/images/macron.jpg",
        name: "Emmanuel Macron",
        text: "Réinvestir dans un «modèle complet d'armée», doubler le nombre de réservistes. Renforcer l'indépendance agricole : favoriser l'installation et l'accompagnement de jeunes agriculteurs, revoir la stratégie agricole européenne «De la ferme à la fourchette».",
        color: pClearBlue,
      );
  }
}

class _MyValeriePage extends State<MyValeriePage> {
  //"assets/images/pecresse.jpg"
  //"Valérie Pécresse"
  //"Augmenter dans les 5 ans les salaires nets inférieurs à 2,2 SMIC de 10%, hors inflation. Poursuite de la réforme de l'assurance chômage en renforçant la dégressivité des allocations. Lutte accrue contre les fraudes sociales et fiscales",
  @override
    Widget build(BuildContext context) {
    return const CandidatInfo(
        imagelink: "assets/images/pecresse.jpg",
        name: "Valérie Pécresse",
        text: "Augmenter dans les 5 ans les salaires nets inférieurs à 2,2 SMIC de 10%, hors inflation. Poursuite de la réforme de l'assurance chômage en renforçant la dégressivité des allocations. Lutte accrue contre les fraudes sociales et fiscales",
        color: pBlackBlue,
      );
  }
}

class _MyPhilippePage extends State<MyPhilippePage> {
  //"assets/images/poutou.jpg"
  //"Philippe Poutou",
  //"400 euros de plus pour tous : SMIC à 1800 euros net ; indexation des salaires sur le coût de la vie. 32 heures de travail sur quatre jours sans perte de salaire; sixième semaine de congés payés. Revenu d'autonomie pour les jeunes de 16 à 25 ans",
  @override
  Widget build(BuildContext context) {
    return const CandidatInfo(
        imagelink: "assets/images/poutou.jpg",
        name: "Philippe Poutou",
        text: "400 euros de plus pour tous : SMIC à 1800 euros net ; indexation des salaires sur le coût de la vie. 32 heures de travail sur quatre jours sans perte de salaire; sixième semaine de congés payés. Revenu d'autonomie pour les jeunes de 16 à 25 ans",
        color: pBlackRed,
      );
  }
}

class _MyFabienPage extends State<MyFabienPage> {
  //"assets/images/roussel.jpg"
  //"Fabien Roussel"
  //"Augmentation générale des salaires, des minima sociaux, des pensions : Smic à 1500 € net (1923 € brut). Aucune pension inférieure à 1200 € net. Un droit universel à l'emploi"
  @override
  Widget build(BuildContext context) {
    return const CandidatInfo(
        imagelink: "assets/images/roussel.jpg",
        name: "Fabien Roussel",
        text: "Augmentation générale des salaires, des minima sociaux, des pensions : Smic à 1500 € net (1923 € brut). Aucune pension inférieure à 1200 € net. Un droit universel à l'emploi",
        color: pClearRed,
      );
  }
}

class _MyZemmourPage extends State<MyZemmourPage> {
  //"assets/images/zemour.jpg"
  //"Éric Zemmour"
  //"Instaurer des peines planchers pour chaque crime et délit. Rétablir la peine de perpétuité réelle. Réduire les remises de peine",
  @override
  Widget build(BuildContext context) {
    return const CandidatInfo(
        imagelink: "assets/images/zemour.jpg",
        name: "Éric Zemmour",
        text: "Instaurer des peines planchers pour chaque crime et délit. Rétablir la peine de perpétuité réelle. Réduire les remises de peine",
        color: pBlackBlue,
      );
  }
}

class WhiteVote extends StatelessWidget {
  const WhiteVote({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
