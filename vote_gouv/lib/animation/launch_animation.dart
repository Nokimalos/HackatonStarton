import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:vote_gouv/auth/biometric_auth.dart';
import 'package:vote_gouv/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vote_gouv/pages/home_page.dart';

class LaunchAnimPage extends StatefulWidget {
  const LaunchAnimPage({Key? key}) : super(key: key);

  @override
  State<LaunchAnimPage> createState() => _LaunchAnimPageState();
}

class _LaunchAnimPageState extends State<LaunchAnimPage>
    with TickerProviderStateMixin {
  late AnimationController _coffeeController;
  bool isGreenCoffee = false;
  bool isTextReady = false;

  @override
  void initState() {
    super.initState();
    _coffeeController = AnimationController(vsync: this);
    _coffeeController.addListener(() {
      if (_coffeeController.value > 0.7) {
        _coffeeController.stop();
        isGreenCoffee = true;
        setState(() {});
        Future.delayed(const Duration(seconds: 1), () {
          isTextReady = true;
          setState(() {});
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _coffeeController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: blackBlue,
      body: Stack(
        children: [
          Visibility(
            visible: isGreenCoffee,
            child: const BottomPart(),
          ),
          AnimatedContainer(
            height: isGreenCoffee ? (height / 1.45) : height,
            duration: const Duration(seconds: 1),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  offset: Offset(3, 3),
                  blurRadius: 10,
                  spreadRadius: 2,
                  color: Colors.black,
                )
              ],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(isGreenCoffee ? 25.0 : 0.0),
                bottomRight: Radius.circular(isGreenCoffee ? 25.0 : 0.0),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AnimatedCrossFade(
                  firstChild: Lottie.asset(
                    'assets/images/animation.json',
                  ),
                  secondChild: Lottie.asset(
                    'assets/images/animation.json',
                    controller: _coffeeController,
                    height: height / 2,
                    onLoaded: (composition) {
                      _coffeeController.duration = composition.duration;
                      _coffeeController.forward();
                    },
                  ),
                  crossFadeState: isGreenCoffee
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  duration: const Duration(seconds: 2),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: AnimatedOpacity(
                    opacity: isTextReady ? 1 : 0,
                    duration: const Duration(seconds: 2),
                    child:Text(
                      'Vot\'Chain',
                      style: GoogleFonts.bebasNeue(
                        textStyle: const TextStyle(
                          fontSize: 60,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BottomPart extends StatelessWidget {
  const BottomPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 36.0, vertical: 75),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyHomePage()));
              },
              child:Text(
                'Accueil',
                style: GoogleFonts.bebasNeue(
                  textStyle: const TextStyle(
                  fontSize: 34,
                  color: Colors.white,
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                  primary: clearBlue,
                  fixedSize: const Size(300, 100),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
            ),
          ],
        ),
      ),
    );
  }
}
