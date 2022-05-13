import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:local_auth/local_auth.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/error_codes.dart' as local_auth_error;
import 'package:lottie/lottie.dart';
import 'package:vote_gouv/pages/home_page.dart';

class BiometricAuthentication extends StatefulWidget {
  const BiometricAuthentication({Key? key}) : super(key: key);

  @override
  State<BiometricAuthentication> createState() =>
      _BiometricAuthenticationState();
}

class _BiometricAuthenticationState extends State<BiometricAuthentication> {
  final _localAuthentication = LocalAuthentication();
  bool _isUserAuthorized = false;

  Future<void> authenticateUser() async {
    bool isAuthorized = true;
    try {
      isAuthorized = await _localAuthentication.authenticate(
        localizedReason: "Please authenticate to see account balance",
        //useErrorDialogs: true,
        //stickyAuth: false,
      );
    } on PlatformException catch (exception) {
      if (exception.code == local_auth_error.notAvailable ||
          exception.code == local_auth_error.passcodeNotSet ||
          exception.code == local_auth_error.notEnrolled) {
        // Handle this exception here.
      }
    }
    if (this.mounted) {
      setState(() {
        _isUserAuthorized = isAuthorized;
      });
    }
  }

  String url =
      "https://api.starton.io/v2/smart-contract/avalanche-fuji/0xb267AB65257746a427AA67a8Aa428643EB681bc7/call";

  void postData() async {
    const contractAddress = "0x4cF9e83542b54Cb8138419b43433742d757E7b31";
    final response = await post(Uri.parse(url),
        headers: {
          "x-api-key": "S9Xv0alT21dHxYRa8TukKxpPsEmj9mwt",
          "content-type": "application/json"
        },
        body: jsonEncode({
          "functionName": "vote",
          "params": [
            "0x8199E099b595c09C7F1A57Ece7b56F19796EA372", // Wallet que l'user doit mettre
            3, // ID que l'user doit mettre (1 => Anne Hidalgo, 2 => Emmanuel Macron..)
          ],
          "signerWallet": (contractAddress),
          "speed": "fast"
        }));
  }

  int greeting = 8;

  void _startCountDown() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (greeting <= 0) {
        setState(() {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const MyHomePage()));
        });
      } else {
        setState(() {
          greeting--;
        });
      }
    });
  }

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
      body: Center(
        child: Column(
          children: <Widget>[
            _isUserAuthorized
                ? Column(
                    children: [
                      const SizedBox(height: 30),
                      Text(
                        "À voté",
                        style: GoogleFonts.bebasNeue(
                          textStyle: const TextStyle(
                            fontSize: 65,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Lottie.asset(
                        'assets/images/validation.json',
                        reverse: true,
                        repeat: false,
                      ),
                      Text(
                        'page d\'accueil dans $greeting',
                        style: GoogleFonts.bebasNeue(
                          textStyle: const TextStyle(
                            fontSize: 35,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  )
                : Column(
                    children: [
                      const SizedBox(height: 70),
                      Padding(
                        padding: const EdgeInsets.only(left: 35, right: 35),
                        child: Text(
                          "Veuillez valider la transaction",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.bebasNeue(
                            textStyle: const TextStyle(
                              letterSpacing: 0.8,
                              fontSize: 45,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 170),
                      SizedBox(
                          height: 75,
                          width: 260,
                          child: TextButton(
                            onPressed: () {
                              authenticateUser();
                              //postData();
                              _startCountDown();
                            },
                            child: Text(
                              "Autoriser",
                              style: GoogleFonts.bebasNeue(
                                textStyle: const TextStyle(
                                  fontSize: 40,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  const Color.fromRGBO(97, 67, 133, 1)),
                            ),
                          )),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
