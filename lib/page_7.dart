import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:big_food/page_6.dart';

class Page7 extends StatefulWidget {
  const Page7({Key? key}) : super(key: key);

  @override
  _Page7State createState() => _Page7State();
}

class _Page7State extends State<Page7> {
  bool obscureText = true;
  bool showPrefix = true;

  void toggleObscureText() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: screenHeight * 0.05),
                Image.asset(
                  "assets/images/Groupe 68.png",
                ),
                SizedBox(height: screenHeight * 0.02),
                Container(
                  width: screenWidth * 0.28,
                  height: screenHeight * 0.04,
                  child: Center(
                    child: Text(
                      "Inscription",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: screenWidth * 0.035,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.025),
                Container(
                  margin: EdgeInsets.fromLTRB(
                    screenWidth * 0.053,
                    0,
                    screenWidth * 0.067,
                    0,
                  ),
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.075,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          screenWidth * 0.04,
                        ),
                        borderSide: BorderSide(
                          color: Color(0xFF707070),
                          width: 0.5,
                        ),
                      ),
                      prefixIcon: GestureDetector(
                        onTap: toggleObscureText,
                        child: Image.asset(
                          "assets/images/NAME.png",
                          width: screenWidth * 0.04,
                          height: screenHeight * 0.03,
                        ),
                      ),
                      hintText: 'Nom',
                      hintStyle: TextStyle(
                        color: Color(0xFF707070).withOpacity(0.53),
                        fontSize: screenWidth * 0.035,
                        height: 0.8,
                        fontFamily: 'Poppins Regular',
                      ),
                      alignLabelWithHint: true,
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.025),
                Container(
                  margin: EdgeInsets.fromLTRB(
                    screenWidth * 0.053,
                    0,
                    screenWidth * 0.067,
                    0,
                  ),
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.075,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          screenWidth * 0.04,
                        ),
                        borderSide: BorderSide(
                          color: Color(0xFF707070),
                          width: 0.3,
                        ),
                      ),
                      prefixIcon: GestureDetector(
                        onTap: toggleObscureText,
                        child: Image.asset(
                          "assets/images/MAIL.png",
                          width: screenWidth * 0.04,
                          height: screenHeight * 0.03,
                        ),
                      ),
                      hintText: 'Email',
                      hintStyle: TextStyle(
                        color: Color(0xFF707070).withOpacity(0.53),
                        fontSize: screenWidth * 0.035,
                        height: 0.8,
                        fontFamily: 'Poppins Regular',
                      ),
                      alignLabelWithHint: true,
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.025),
                Container(
                  margin: EdgeInsets.fromLTRB(
                    screenWidth * 0.053,
                    0,
                    screenWidth * 0.067,
                    0,
                  ),
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.075,
                  child: TextField(
                    obscureText: obscureText,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          screenWidth * 0.04,
                        ),
                        borderSide: BorderSide(
                          color: Color(0xFF707070),
                          width: 0.3,
                        ),
                      ),
                      suffixIcon: GestureDetector(
                        onTap: toggleObscureText,
                        child: Image.asset(
                          "assets/images/off.png",
                          width: screenWidth * 0.04,
                          height: screenHeight * 0.03,
                        ),
                      ),
                      prefixIcon: GestureDetector(
                        onTap: toggleObscureText,
                        child: Image.asset(
                          "assets/images/PASSWORD.png",
                          width: screenWidth * 0.04,
                          height: screenHeight * 0.03,
                        ),
                      ),
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Color(0xFF707070).withOpacity(0.53),
                        fontSize: screenWidth * 0.035,
                        height: 0.8,
                        fontFamily: 'Poppins Regular',
                      ),
                      alignLabelWithHint: true,
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.025),
                Container(
                  margin: EdgeInsets.fromLTRB(
                    screenWidth * 0.053,
                    0,
                    screenWidth * 0.067,
                    0,
                  ),
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.075,
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          screenWidth * 0.04,
                        ),
                        borderSide: BorderSide(
                          color: Color(0xFF707070),
                          width: 0.3,
                        ),
                      ),
                      prefixIcon: GestureDetector(
                        onTap: toggleObscureText,
                        child: Image.asset(
                          "assets/images/PHONE.png",
                          width: screenWidth * 0.04,
                          height: screenHeight * 0.03,
                        ),
                      ),
                      hintText: 'Telephone',
                      hintStyle: TextStyle(
                        color: Color(0xFF707070).withOpacity(0.53),
                        fontSize: screenWidth * 0.035,
                        height: 0.8,
                        fontFamily: 'Poppins Regular',
                      ),
                      alignLabelWithHint: true,
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.035),
                Container(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => Page8()),
                      // );
                    },
                    child: Container(
                      width: screenWidth * 0.9,
                      height: screenHeight * 0.075,
                      alignment: Alignment.center,
                      child: Text(
                        'Inscription',
                        style: TextStyle(fontSize: screenWidth * 0.055),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          screenWidth * 0.03,
                        ),
                      ),
                      primary: Color(0xFFFF0000),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.025),
                Container(
                  width: screenWidth * 0.6,
                  height: screenHeight * 0.027,
                  child: Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: screenWidth * 0.035,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 1.2,
                        ),
                        children: [
                          TextSpan(
                            text: 'You have an account ?',
                            style: TextStyle(
                              color: Color(0xFF000000),
                            ),
                          ),
                          TextSpan(
                            text: ' ',
                          ),
                          TextSpan(
                            text: 'Login',
                            style: TextStyle(
                              color: Color(0xFF0080FF),
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Page6(),
                                  ),
                                );
                              },
                          ),
                        ],
                      ),
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
