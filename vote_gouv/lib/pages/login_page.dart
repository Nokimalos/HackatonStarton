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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Color.fromRGBO(97, 67, 133, 1),
            Color.fromRGBO(81, 99, 149, 1),
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
              const SizedBox(height: 155),
              const Padding(
                //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Prénom',
                      hintText: 'ex: Éric'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 35, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Nom',
                      hintText: 'ex: Zemmour'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 35, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'N° de sécurité sociale',
                      hintText: '1 85 05 78 006 084 36'),
                ),
              ),
              const SizedBox(height: 55),
              SizedBox(
                height: 50,
                width: 250,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(const Color.fromRGBO(97, 67, 133, 1)),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const ConnectedPage()));
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
              const Text('New User? Create Account')
            ],
          ),
        ),
      ),
    );
  }
}
