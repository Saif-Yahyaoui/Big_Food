import 'dart:async';
import 'package:big_food/mapscreen.dart';
import 'package:big_food/page_11.dart';
import 'package:big_food/page_12.dart';
import 'package:big_food/page_17.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter/cupertino.dart';

class Page18 extends StatefulWidget {
  const Page18({Key? key}) : super(key: key);

  @override
  Page18State createState() => Page18State();
}

class Page18State extends State<Page18> {
  late final ScrollController _scrollController; // Define the ScrollController

  List<String> imagePaths2 = [
    'assets/images/burger2@2x.png',
    'assets/images/burger3@2x.png',
    'assets/images/burger2@2x.png',
    'assets/images/burger3@2x.png',
    'assets/images/burger2@2x.png',
  ];
  List<String> texts2 = [
    'Pizza 4 sizes',
    'Chiken thighs 2 pieces',
    'Cheese Burger ',
    'Small Fries',
    '5 Chicken fingers',
  ];
  List<String> prices2 = [
    '\$11.50',
    '\$8.50',
    '\$10.50',
    '\$3.20',
    '\$5.99',
  ];
  List<String> data2 = [
    'Pizza',
    'Chiken thighs',
    'Burger',
    'Fries',
    'Chicken fingers',
  ];

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
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Page11()),
            );
          },
        ),
        title: Text(
          'Votre panier',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            SizedBox(
              width: screenWidth * 0.97,
              height: screenHeight * 0.24,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: screenWidth * 0.35,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 0, 0, 0)
                                .withOpacity(0.03),
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: const Offset(
                              2,
                              4,
                            ),
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    height: screenHeight * 0.025,
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: SizedBox(
                                      width: screenWidth * 0.13,
                                      height: screenHeight * 0.07,
                                      child: Image.asset(imagePaths2[index],
                                          fit: BoxFit.scaleDown),
                                    ),
                                  ),
                                  SizedBox(
                                    height: screenHeight * 0.012,
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      texts2[index],
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: screenHeight * 0.009),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      data2[index],
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: screenHeight * 0.024),
                                  Container(
                                    padding: const EdgeInsets.only(
                                        left: 17, right: 17),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 15,
                                            height: 15,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color.fromARGB(
                                                  50, 161, 160, 160),
                                            ),
                                            child: Icon(
                                              Icons.remove,
                                              color: Colors.black,
                                              size: 15,
                                            ),
                                          ),
                                          SizedBox(width: screenWidth * 0.025),
                                          Container(
                                            width: 15,
                                            height: 15,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.red,
                                            ),
                                            child: Icon(Icons.add,
                                                color: Colors.white, size: 15),
                                          ),
                                          SizedBox(width: screenWidth * 0.05),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              prices2[index],
                                              style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Dialog(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Container(
                                        padding: EdgeInsets.all(16),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Image.asset(
                                              'assets/images/alert.png',
                                              width: 80,
                                              height: 80,
                                            ),
                                            SizedBox(height: 16),
                                            Text(
                                              'Supprimer cet article',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15,
                                              ),
                                            ),
                                            SizedBox(height: 16),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                TextButton(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: const Color(
                                                          0xFFDF0303),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                      horizontal: 30,
                                                      vertical: 8,
                                                    ),
                                                    child: Text(
                                                      'Oui',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                  onPressed: () {
                                                    // Perform delete operation
                                                    Navigator.of(context).pop();
                                                  },
                                                ),
                                                SizedBox(width: 8),
                                                TextButton(
                                                  child: Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                      horizontal: 16,
                                                      vertical: 8,
                                                    ),
                                                    child: Text(
                                                      'Non',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                              child: CircleAvatar(
                                radius: 14,
                                backgroundColor: const Color(0xFFFF0000),
                                child: ClipOval(
                                  child: SvgPicture.asset(
                                    'assets/images/trash.svg',
                                    width: 14,
                                    height: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white38,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(169, 0, 0, 0).withOpacity(0.01),
                    spreadRadius: 3,
                    blurRadius: 4,
                    offset: const Offset(
                      2,
                      1,
                    ),
                  ),
                ],
              ),
              margin: EdgeInsets.only(left: screenWidth * 0.05),
              width: screenWidth * 0.93,
              height: screenHeight * 0.06,
              child: Row(
                children: [
                  SizedBox(width: screenWidth * 0.02),
                  SvgPicture.asset(
                    'assets/images/heal.svg',
                    width: 18,
                    height: 18,
                    color: Colors.black,
                  ),
                  SizedBox(width: screenWidth * 0.03),
                  Text(
                    'Des allergies',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.58),
                  SvgPicture.asset(
                    'assets/images/arrow.svg',
                    width: 13,
                    height: 13,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MapScreen()),
                );
              },
              child: Container(
                margin: EdgeInsets.only(left: screenWidth * 0),
                width: screenWidth * 0.9,
                height: screenHeight * 0.03,
                child: const Text(
                  'Détails de livraison',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            SizedBox(
              width: screenWidth * 0.9,
              height: screenHeight * 0.18,
              child: const MapScreen(hideAppBar: true),
            ),
            SizedBox(height: screenHeight * 0.04),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white38,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(169, 0, 0, 0).withOpacity(0.01),
                    spreadRadius: 3,
                    blurRadius: 4,
                    offset: const Offset(
                      2,
                      1,
                    ),
                  ),
                ],
              ),
              margin: EdgeInsets.only(left: screenWidth * 0.01),
              width: screenWidth * 0.97,
              height: screenHeight * 0.06,
              child: Row(
                children: [
                  SizedBox(width: screenWidth * 0.02),
                  SvgPicture.asset(
                    'assets/images/pay.svg',
                    width: 18,
                    height: 18,
                    color: Colors.black,
                  ),
                  SizedBox(width: screenWidth * 0.01),
                  Text(
                    textAlign: TextAlign.center,
                    'Ajouter un moyen de paiement ?',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.33),
                  SvgPicture.asset(
                    'assets/images/arrow.svg',
                    width: 13,
                    height: 13,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.05),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white38,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(169, 0, 0, 0).withOpacity(0.01),
                    spreadRadius: 3,
                    blurRadius: 4,
                    offset: const Offset(
                      2,
                      1,
                    ),
                  ),
                ],
              ),
              margin: EdgeInsets.only(left: screenWidth * 0.01),
              width: screenWidth * 0.97,
              height: screenHeight * 0.06,
              child: Row(
                children: [
                  SizedBox(width: screenWidth * 0.02),
                  SvgPicture.asset(
                    'assets/images/codepromo.svg',
                    width: 25,
                    height: 25,
                    color: Colors.black,
                  ),
                  SizedBox(width: screenWidth * 0.01),
                  Text(
                    textAlign: TextAlign.center,
                    'Vous avez un code promo ?',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.4),
                  SvgPicture.asset(
                    'assets/images/arrow.svg',
                    width: 13,
                    height: 13,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.05),
            Container(
              margin: EdgeInsets.only(left: screenWidth * 0),
              width: screenWidth * 0.9,
              height: screenHeight * 0.03,
              child: Row(
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    "Nombre d'article",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 216),
                    child: Text(
                      '0,00 \$',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            Container(
              margin: EdgeInsets.only(left: screenWidth * 0),
              width: screenWidth * 0.9,
              height: screenHeight * 0.03,
              child: Row(
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    'Remise',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 275),
                    child: Text(
                      '0,00 \$',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            Container(
              margin: EdgeInsets.only(left: screenWidth * 0),
              width: screenWidth * 0.9,
              height: screenHeight * 0.03,
              child: Row(
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    'Livraison',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 265),
                    child: Text(
                      '0,00 \$',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            Container(
              margin: EdgeInsets.only(left: screenWidth * 0),
              width: screenWidth * 0.9,
              height: screenHeight * 0.03,
              child: Row(
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    'Total',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 288),
                    child: Text(
                      '0,00 \$',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.025),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFDF0303),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 85),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    screenWidth * 0.04,
                  ),
                ),
              ),
              child: Text(
                'Valider ma commande',
                style: TextStyle(fontSize: screenWidth * 0.05),
              ),
            ),
            SizedBox(height: screenHeight * 0.1),
          ],
        ),
      ),
      floatingActionButtonLocation: showBtmAppBr
          ? FloatingActionButtonLocation.centerDocked
          : FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        materialTapTargetSize: MaterialTapTargetSize.padded,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Page11()),
          );
        },
        child: const Icon(
          Icons.home,
          size: 36,
        ),
      ),
      bottomNavigationBar: AnimatedContainer(
        duration: const Duration(
          milliseconds: 800,
        ),
        curve: Curves.easeInOutSine,
        height: showBtmAppBr ? 50 : 0,
        child: BottomAppBar(
          color: const Color(0xFFFF0000),
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Page12()),
                  );
                },
                icon: const Icon(
                  CupertinoIcons.map_fill,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Page18(),
                    ),
                  );
                },
                icon: const Icon(
                  CupertinoIcons.cart_fill,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Page17(),
                    ),
                  );
                },
                icon: const Icon(
                  CupertinoIcons.heart_fill,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
