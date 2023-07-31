import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/icon_v3_transparent.png',
              filterQuality: FilterQuality.medium,
              height: 50,
              width: 50,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(25, 0, 25, 35),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Haus",
                    style: TextStyle(
                      fontFamily: 'Helvetica',
                      fontSize: 30,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                  Text(
                    "reparatur",
                    style: TextStyle(
                      fontFamily: 'Helvetica',
                      fontSize: 30,
                      color: Color(0xFFF9A720),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 4),
              margin: const EdgeInsets.fromLTRB(25, 0, 25, 10),
              height: 50,
              width: 370,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 52, 52, 52),
                  border: Border.all(),
                  borderRadius: const BorderRadius.all(Radius.circular(5))),
              child: TextField(
                style: GoogleFonts.getFont("Ubuntu"),
                obscureText: false,
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: "Email address or phone number",
                  hintStyle: GoogleFonts.getFont("Ubuntu"),
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 4),
              margin: const EdgeInsets.fromLTRB(25, 5, 25, 10),
              height: 50,
              width: 370,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 52, 52, 52),
                  border: Border.all(),
                  borderRadius: const BorderRadius.all(Radius.circular(5))),
              child: TextField(
                obscureText: true,
                style: GoogleFonts.getFont("Ubuntu"),
                autocorrect: false,
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: "Password",
                  hintStyle: GoogleFonts.getFont("Ubuntu"),
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(25, 5, 25, 10),
              height: 50,
              width: 370,
              child: ElevatedButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 145, 96, 18),
                  ),
                  backgroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 217, 144, 27),
                  ),
                  foregroundColor:
                      MaterialStateProperty.all(const Color(0xFFFFFFFF)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                onPressed: () {},
                child:
                    const Text('Login', style: TextStyle(fontFamily: 'Ubuntu')),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Forgot your password? ',
                  style: GoogleFonts.ubuntu(
                    textStyle: const TextStyle(
                      color: Color.fromARGB(255, 145, 145, 145),
                    ),
                  ),
                ),
                Text(
                  'Get Help',
                  style: GoogleFonts.ubuntu(
                    textStyle: const TextStyle(
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 50,
        color: Colors.transparent,
        elevation: 0,
        child: Text(
          'Create an account',
          textAlign: TextAlign.center,
          style: GoogleFonts.ubuntu(
            textStyle: const TextStyle(
              color: Color.fromARGB(255, 203, 203, 203),
            ),
          ),
        ),
      ),
    );
  }
}
