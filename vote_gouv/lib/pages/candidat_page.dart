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
        name: 'Jean-Luc M??lenchon',
        text: 'Face aux grands bouleversements du monde, nous ne pouvons plus attendre. Il faut transformer en profondeur la soci??t?? et construire l???harmonie des ??tres humains entre eux et avec la nature. Nous sommes pr??ts ?? gouverner pour concr??tiser la devise de notre R??publique : ?? Libert??, ??galit??, Fraternit?? ??.',
        color: pClearRed,
      );
  }
}

class _MyMarinePage extends State<MyMarinePage> {
  //"assets/images/marine.jpg",
  //"Marine Le Pen",
  //"Faire de la s??curit?? partout et pour tous une priorit?? du quinquennat. R??tablir les peines planchers. Supprimer toute possibilit?? de r??duction et d'am??nagements de peine, en particulier pour les violences contre les personnes. Instituer une pr??somption de l??gitime d??fense pour les forces de l'ordre",
  @override
  Widget build(BuildContext context) {
    return const CandidatInfo(
        imagelink: "assets/images/marine.jpg",
        name: "Marine Le Pen",
        text: "Faire de la s??curit?? partout et pour tous une priorit?? du quinquennat. R??tablir les peines planchers. Supprimer toute possibilit?? de r??duction et d'am??nagements de peine, en particulier pour les violences contre les personnes. Instituer une pr??somption de l??gitime d??fense pour les forces de l'ordre",
        color: pBlackBlue,
      );
  }
}

class _MyNathaliePage extends State<MyNathaliePage> {
  //"assets/images/Nathalie-Arthaud.jpg"
  //"Nathalie Arthaud",
  //"R??partition du travail entre tous, sans baisse des salaires. Augmentation g??n??rale des salaires de base. Salaires, allocations, pensions au-dessus de 2000 euros par mois. Indexation des augmentations de salaires et des pensions sur l'inflation",
  @override
  Widget build(BuildContext context) {
    return const CandidatInfo(
        imagelink: "assets/images/Nathalie-Arthaud.jpg",
        name: "Nathalie Arthaud",
        text: "R??partition du travail entre tous, sans baisse des salaires. Augmentation g??n??rale des salaires de base. Salaires, allocations, pensions au-dessus de 2000 euros par mois. Indexation des augmentations de salaires et des pensions sur l'inflation",
        color: pBlackRed,
      );
  }
}

class _MyNicolasPage extends State<MyNicolasPage> {
  //"assets/images/nicolas.jpg"
  //"Nicolas Dupont-Aignan",
  //"Regcours ?? la pratique r??f??rendaire sur les sujets cl??s. Instauration du r??f??rendum d'initiative populaire ou citoyenne (RIC) ?? partir de 500.000 signatures. Prise en compte du vote blanc dans les r??sultats des ??lections. Retour au septennat avec possibilit?? d'un referendum r??vocatoire d'initiative citoyenne ?? mi-mandat",
  @override
    Widget build(BuildContext context) {
    return const CandidatInfo(
        imagelink: "assets/images/nicolas.jpg",
        name: "Nicolas Dupont-Aignan",
        text: "Regcours ?? la pratique r??f??rendaire sur les sujets cl??s. Instauration du r??f??rendum d'initiative populaire ou citoyenne (RIC) ?? partir de 500.000 signatures. Prise en compte du vote blanc dans les r??sultats des ??lections. Retour au septennat avec possibilit?? d'un referendum r??vocatoire d'initiative citoyenne ?? mi-mandat",
        color: pClearBlue,
      );
  }
}

class _MyAnnePage extends State<MyAnnePage> {
  //"assets/images/hidalgo.jpg"
  //"Anne Hidalgo",
  //"Augmenter le Smic de 200 euros nets. Limiter ?? 1 ?? 20 l'??cart maximal dans les entreprises entre la r??mun??ration la plus basse et la plus haute. P??nalit??s pour les entreprises qui ne respectent pas l'??galit?? salariale hommes-femmes",
  @override
    Widget build(BuildContext context) {
    return const CandidatInfo(
        imagelink: "assets/images/hidalgo.jpg",
        name: "Anne Hidalgo",
        text: "Augmenter le Smic de 200 euros nets. Limiter ?? 1 ?? 20 l'??cart maximal dans les entreprises entre la r??mun??ration la plus basse et la plus haute. P??nalit??s pour les entreprises qui ne respectent pas l'??galit?? salariale hommes-femmes",
        color: pClearRed,
      );
  }
}

class _MyYannickPage extends State<MyYannickPage> {
  //"assets/images/jadot.jpg"
  //"Yannick Jadot"
  //"10 milliards d'euros par an pour la r??novation thermique des passoires ??nerg??tiques. Fin de la vente de v??hicules thermiques neufs d??s 2030. 4 milliards d'euros chaque ann??e pour r??nover le r??seau ferroviaire et ouvrir des petites lignes de train",
  @override
      Widget build(BuildContext context) {
    return const CandidatInfo(
        imagelink: "assets/images/jadot.jpg",
        name: "Yannick Jadot",
        text: "10 milliards d'euros par an pour la r??novation thermique des passoires ??nerg??tiques. Fin de la vente de v??hicules thermiques neufs d??s 2030. 4 milliards d'euros chaque ann??e pour r??nover le r??seau ferroviaire et ouvrir des petites lignes de train",
        color: pClearGreen,
      );
  }
}

class _MyJeanPage extends State<MyJeanPage> {
  //"assets/images/lasalle.jpg"
  //"Jean Lassalle",
  //Instaurer le RIC, le R??f??rendum d'initiative citoyenne. Reconna??tre le vote blanc. Cr??er un service national universel, militaire ou civil. Revoir la dur??e des mandats pr??sidentiels et l??gislatifs",
  @override
  Widget build(BuildContext context) {
    return const CandidatInfo(
        imagelink: "assets/images/lasalle.jpg",
        name: "Jean Lassalle",
        text: "Instaurer le RIC, le R??f??rendum d'initiative citoyenne. Reconna??tre le vote blanc. Cr??er un service national universel, militaire ou civil. Revoir la dur??e des mandats pr??sidentiels et l??gislatifs",
        color: pClearBlue,
      );
  }
}

class _MyEmmanuelPage extends State<MyEmmanuelPage> {
  //"assets/images/macron.jpg"
  //"Emmanuel Macron"
  //"R??investir dans un ??mod??le complet d'arm??e??, doubler le nombre de r??servistes. Renforcer l'ind??pendance agricole : favoriser l'installation et l'accompagnement de jeunes agriculteurs, revoir la strat??gie agricole europ??enne ??De la ferme ?? la fourchette??. Des ??tats g??n??raux pour le droit ?? l'information, garantie d'un ??mod??le ??conomique viable pour une information libre et ind??pendante??",
  @override
  Widget build(BuildContext context) {
    return const CandidatInfo(
        imagelink: "assets/images/macron.jpg",
        name: "Emmanuel Macron",
        text: "R??investir dans un ??mod??le complet d'arm??e??, doubler le nombre de r??servistes. Renforcer l'ind??pendance agricole : favoriser l'installation et l'accompagnement de jeunes agriculteurs, revoir la strat??gie agricole europ??enne ??De la ferme ?? la fourchette??.",
        color: pClearBlue,
      );
  }
}

class _MyValeriePage extends State<MyValeriePage> {
  //"assets/images/pecresse.jpg"
  //"Val??rie P??cresse"
  //"Augmenter dans les 5 ans les salaires nets inf??rieurs ?? 2,2 SMIC de 10%, hors inflation. Poursuite de la r??forme de l'assurance ch??mage en renfor??ant la d??gressivit?? des allocations. Lutte accrue contre les fraudes sociales et fiscales",
  @override
    Widget build(BuildContext context) {
    return const CandidatInfo(
        imagelink: "assets/images/pecresse.jpg",
        name: "Val??rie P??cresse",
        text: "Augmenter dans les 5 ans les salaires nets inf??rieurs ?? 2,2 SMIC de 10%, hors inflation. Poursuite de la r??forme de l'assurance ch??mage en renfor??ant la d??gressivit?? des allocations. Lutte accrue contre les fraudes sociales et fiscales",
        color: pBlackBlue,
      );
  }
}

class _MyPhilippePage extends State<MyPhilippePage> {
  //"assets/images/poutou.jpg"
  //"Philippe Poutou",
  //"400 euros de plus pour tous : SMIC ?? 1800 euros net ; indexation des salaires sur le co??t de la vie. 32 heures de travail sur quatre jours sans perte de salaire; sixi??me semaine de cong??s pay??s. Revenu d'autonomie pour les jeunes de 16 ?? 25 ans",
  @override
  Widget build(BuildContext context) {
    return const CandidatInfo(
        imagelink: "assets/images/poutou.jpg",
        name: "Philippe Poutou",
        text: "400 euros de plus pour tous : SMIC ?? 1800 euros net ; indexation des salaires sur le co??t de la vie. 32 heures de travail sur quatre jours sans perte de salaire; sixi??me semaine de cong??s pay??s. Revenu d'autonomie pour les jeunes de 16 ?? 25 ans",
        color: pBlackRed,
      );
  }
}

class _MyFabienPage extends State<MyFabienPage> {
  //"assets/images/roussel.jpg"
  //"Fabien Roussel"
  //"Augmentation g??n??rale des salaires, des minima sociaux, des pensions : Smic ?? 1500 ??? net (1923 ??? brut). Aucune pension inf??rieure ?? 1200 ??? net. Un droit universel ?? l'emploi"
  @override
  Widget build(BuildContext context) {
    return const CandidatInfo(
        imagelink: "assets/images/roussel.jpg",
        name: "Fabien Roussel",
        text: "Augmentation g??n??rale des salaires, des minima sociaux, des pensions : Smic ?? 1500 ??? net (1923 ??? brut). Aucune pension inf??rieure ?? 1200 ??? net. Un droit universel ?? l'emploi",
        color: pClearRed,
      );
  }
}

class _MyZemmourPage extends State<MyZemmourPage> {
  //"assets/images/zemour.jpg"
  //"??ric Zemmour"
  //"Instaurer des peines planchers pour chaque crime et d??lit. R??tablir la peine de perp??tuit?? r??elle. R??duire les remises de peine",
  @override
  Widget build(BuildContext context) {
    return const CandidatInfo(
        imagelink: "assets/images/zemour.jpg",
        name: "??ric Zemmour",
        text: "Instaurer des peines planchers pour chaque crime et d??lit. R??tablir la peine de perp??tuit?? r??elle. R??duire les remises de peine",
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
