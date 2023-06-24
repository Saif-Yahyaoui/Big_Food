import 'package:big_food/page_6.dart';
import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';

class Page9 extends StatefulWidget {
  const Page9({Key? key}) : super(key: key);

  @override
  _Page9State createState() => _Page9State();
}

class _Page9State extends State<Page9> {
  bool obscureText = true;

  void toggleObscureText() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.15),
                Lottie.asset(
                  'assets/animations/105919.json',
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.34,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.005),
                Container(
                  margin: EdgeInsets.fromLTRB(
                      MediaQuery.of(context).size.width * 0.009,
                      0,
                      MediaQuery.of(context).size.width * 0.25,
                      0),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.04,
                  child: Center(
                    child: Text(
                      "Créer un nouveau mot de passe",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.05,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                Container(
                  margin: EdgeInsets.fromLTRB(
                      MediaQuery.of(context).size.width * 0.029,
                      0,
                      MediaQuery.of(context).size.width * 0.25,
                      0),
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.07,
                  child: Center(
                    child: Text(
                      "Votre nouveau mot de passe doit être différent des précédents mots de passe utilisés",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.035,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.normal,
                        height: 1.3,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                Container(
                  margin: EdgeInsets.fromLTRB(
                      MediaQuery.of(context).size.width * 0.01,
                      0,
                      MediaQuery.of(context).size.width * 0.6,
                      0),
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: Center(
                    child: Text(
                      "Nouveau mot passe",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.038,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(
                      MediaQuery.of(context).size.width * 0.005,
                      0,
                      MediaQuery.of(context).size.width * 0.13,
                      0),
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: TextField(
                    obscureText: obscureText,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.02),
                        borderSide: BorderSide(
                          color: Color(0xFF707070),
                          width: 0.3,
                        ),
                      ),
                      suffixIcon: GestureDetector(
                        onTap: toggleObscureText,
                        child: Image.asset(
                          "assets/images/off.png",
                          width: MediaQuery.of(context).size.width * 0.05,
                          height: MediaQuery.of(context).size.height * 0.035,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.005),
                Container(
                  margin: EdgeInsets.fromLTRB(
                      MediaQuery.of(context).size.width * 0.03,
                      0,
                      MediaQuery.of(context).size.width * 0.6,
                      0),
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: Center(
                    child: Text(
                      "Confirmer mot passe",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.038,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(
                      MediaQuery.of(context).size.width * 0.005,
                      0,
                      MediaQuery.of(context).size.width * 0.13,
                      0),
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: TextField(
                    obscureText: obscureText,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.02),
                        borderSide: BorderSide(
                          color: Color(0xFF707070),
                          width: 0.3,
                        ),
                      ),
                      suffixIcon: GestureDetector(
                        onTap: toggleObscureText,
                        child: Image.asset(
                          "assets/images/off.png",
                          width: MediaQuery.of(context).size.width * 0.05,
                          height: MediaQuery.of(context).size.height * 0.035,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.048,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page6()),
                      );
                    },
                    child: Text(
                      'Réinitialiser le mot de passe',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.035,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.028),
                      ),
                      primary: Color(0xFFFF0000),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
