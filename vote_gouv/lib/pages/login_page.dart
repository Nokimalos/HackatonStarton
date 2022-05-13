import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vote_gouv/pages/connected_page.dart';
import 'package:vote_gouv/pages/home_page.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final prenomController = TextEditingController();
  final nomController = TextEditingController();
  final nsecuController = TextEditingController();

  @override
  void dispose() {
    prenomController.dispose();
    nomController.dispose();
    nsecuController.dispose();
    super.dispose();
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
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [
            0.1,
            0.5,
          ],
          colors: [
            Color.fromRGBO(255, 255, 255, 1),
            Color.fromRGBO(255, 255, 255, 1),
          ],
        )),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 45),
              Text(
                "Sign in",
                style: GoogleFonts.bebasNeue(
                  textStyle: const TextStyle(
                    letterSpacing: 4,
                    fontSize: 45,
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              const SizedBox(height: 85),
              Padding(
                //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: prenomController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Prénom',
                      hintText: 'ex: Éric'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 35, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: nomController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Nom',
                      hintText: 'ex: Zemmour'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 35, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: nsecuController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'N° de sécurité sociale',
                      hintText: '1 85 05 78 006 084 36'),
                ),
              ),
              const SizedBox(height: 55),
              SizedBox(
                height: 65,
                width: 250,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromRGBO(97, 67, 133, 1)),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const ConnectedPage()));
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                ),
              ),
              const SizedBox(
                height: 70,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
