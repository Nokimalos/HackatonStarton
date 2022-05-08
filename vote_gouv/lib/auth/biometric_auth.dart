import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:local_auth/local_auth.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/error_codes.dart' as local_auth_error;

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
    bool isAuthorized = false;
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

    if (!mounted) return;

    setState(() {
      _isUserAuthorized = isAuthorized;
    });
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vous êtes sur la page de vote'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _isUserAuthorized
                ? (const Text(
                    "Merci pour votre vote!\nVotre vote est bien sur la blockchain!",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ))
                : (TextButton(
                    onPressed: () {
                      authenticateUser();
                      postData();
                    },
                    child: const Text(
                      "Authorize now",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.lightBlueAccent),
                    ),
                  )),
          ],
        ),
      ),
    );
  }
}
