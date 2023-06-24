import 'package:big_food/page_9.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Page8 extends StatelessWidget {
  const Page8({Key? key}) : super(key: key);

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
                  'assets/animations/95530.json',
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: MediaQuery.of(context).size.height * 0.45,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                Container(
                  margin: EdgeInsets.fromLTRB(
                      MediaQuery.of(context).size.width * 0.005,
                      0,
                      MediaQuery.of(context).size.width * 0.3,
                      0),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.04,
                  child: Center(
                    child: Text(
                      "Réinitialiser le mot de passe",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.05,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                Container(
                  margin: EdgeInsets.fromLTRB(
                      MediaQuery.of(context).size.width * 0.02,
                      0,
                      MediaQuery.of(context).size.width * 0.25,
                      0),
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.07,
                  child: Center(
                    child: Text(
                      "Entrez l'e-mail associé à votre compte et envoyez un e-mail avec les instructions pour réinitialiser votre mot de passe .",
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
                      MediaQuery.of(context).size.width * 0.005,
                      0,
                      MediaQuery.of(context).size.width * 0.66,
                      0),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: Center(
                    child: Text(
                      "Adresse e-mail",
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
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.048,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.02),
                        borderSide: BorderSide(
                          color: Color(0xFF707070),
                          width: 0.3,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.048,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page9()),
                      );
                    },
                    child: Text(
                      'Envoyer des instructions',
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
