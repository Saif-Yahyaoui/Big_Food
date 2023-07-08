import 'dart:async';
import 'package:big_food/page_11.dart';
import 'package:big_food/page_6.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Page10 extends StatefulWidget {
  const Page10({Key? key}) : super(key: key);

  @override
  Page10State createState() => Page10State();
}

class Page10State extends State<Page10> {
  File? pickedImage;

  Future<void> _pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (image != null) {
        pickedImage = File(image.path);
      } else {
        pickedImage = null; // Handle the case when no image is picked
      }
    });
  }

  late final ScrollController _scrollController; // Define the ScrollController
  bool obscureText = true;
  bool showPrefix = true;

  void toggleObscureText() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  int pageNo = 0;
  Timer getTimer() {
    return Timer.periodic(const Duration(seconds: 3), (timer) {
      if (pageNo == 5) {
        pageNo = 0;
      }

      pageNo++;
    });
  }

  @override
  void initState() {
    _scrollController = ScrollController(); // Initialize the ScrollController
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        setState(() {
          showBtmAppBr = false;
        });
      } else {
        setState(() {
          showBtmAppBr = true;
        });
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  bool showBtmAppBr = true;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Center(
          child: Column(
            children: [
              SizedBox(height: screenHeight * 0.065),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: screenWidth * 0.05),
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: screenWidth * 0.23,
                      height: screenHeight * 0.12,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            spreadRadius: screenWidth * 0.003,
                            blurRadius: 0,
                            offset: Offset(0, 0),
                          ),
                        ],
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: screenWidth * 0.02,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 0,
                            right: 0,
                            width: screenWidth * 0.19,
                            height: screenHeight * 0.099,
                            child: CircleAvatar(
                              backgroundImage: pickedImage != null
                                  ? FileImage(pickedImage!)
                                  : const AssetImage(
                                          "assets/images/profile.png")
                                      as ImageProvider,
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            width: screenWidth * 0.045,
                            height: screenHeight * 0.025,
                            child: GestureDetector(
                              onTap: _pickImage,
                              child: Image.asset(
                                "assets/images/camera2.png",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.02),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: screenHeight * 0.015),
                      Text(
                        'Saif Yahyaoui',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: screenWidth * 0.06,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.005),
                      Text(
                        'saif.yahyaoui@esprit.tn',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: screenWidth * 0.027,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.02),
              _buildTextFieldWithHint('Nom & Prénom'),
              SizedBox(height: screenHeight * 0.02),
              _buildTextFieldWithHint2('Genre', 'Anniversaire'),
              SizedBox(height: screenHeight * 0.02),
              _buildTextFieldWithHint2('Numero Telephone', 'Adresse'),
              SizedBox(height: screenHeight * 0.02),
              _buildTextFieldWithHint('Email'),
              SizedBox(height: screenHeight * 0.02),
              _buildTextFieldWithHint('Mot de passe'),
              SizedBox(height: screenHeight * 0.02),
              _buildTextFieldWithHint('Moyens de paiement'),
              SizedBox(height: screenHeight * 0.02),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Page6()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFFF0000),
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      screenWidth * 0.03,
                    ),
                  ),
                ),
                child: Text(
                  'Enregistrer',
                  style: TextStyle(fontSize: screenWidth * 0.04),
                ),
              ),
              SizedBox(height: screenHeight * 0.09),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: showBtmAppBr
          ? FloatingActionButtonLocation.centerDocked
          : FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Page11()),
          );
        },
        child: const Icon(
          Icons.home_filled,
        ),
      ),
      bottomNavigationBar: AnimatedContainer(
        child: BottomAppBar(
          color: Color(0xFFFF0000),
          notchMargin: 5.0,
          shape: const CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.store),
                color: Colors.white,
                iconSize: 35,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.map,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        duration: const Duration(
          milliseconds: 800,
        ),
        curve: Curves.easeInOutSine,
        height: showBtmAppBr ? 50 : 0,
      ),
    );
  }

  Widget _buildTextFieldWithHint(String hint1) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: hint1,
                hintStyle: TextStyle(
                  color: Color(0xFFB9B9B9).withOpacity(1),
                  fontSize: screenWidth * 0.04,
                  height: 0.8,
                  fontFamily: 'Poppins Regular',
                ),
                contentPadding: EdgeInsets.only(bottom: 70, left: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextFieldWithHint2(String hint1, String hint2) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                hintText: hint1,
                hintStyle: TextStyle(
                  color: Color(0xFFB9B9B9).withOpacity(1),
                  fontSize: screenWidth * 0.04,
                  height: 0.8,
                  fontFamily: 'Poppins Regular',
                ),
                contentPadding: EdgeInsets.only(bottom: 70, left: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(bottom: 70, left: 10),
                hintText: hint2,
                hintStyle: TextStyle(
                  color: Color(0xFFB9B9B9).withOpacity(1),
                  fontSize: screenWidth * 0.04,
                  height: 0.8,
                  fontFamily: 'Poppins Regular',
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
