import 'package:big_food/mapscreen.dart';
import 'package:big_food/page_11.dart';
import 'package:big_food/page_17.dart';
import 'package:big_food/page_18.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter/cupertino.dart';

class Page12 extends StatefulWidget {
  const Page12({Key? key}) : super(key: key);

  @override
  Page12State createState() => Page12State();
}

class Page12State extends State<Page12> {
  late final ScrollController _scrollController; // Define the ScrollController

  List<String> imagePaths2 = [
    'assets/images/rest1.png',
    'assets/images/rest2.png',
    'assets/images/rest3.png',
    'assets/images/rest4.png',
  ];
  List<String> texts2 = [
    'Pizza 4 sizes',
    'Chiken thigh',
    'Cheese Burger ',
    'Small Fries',
  ];
  List<String> distance = [
    '4 Km',
    '4 Km',
    '4 Km',
    '4 Km',
  ];
  List<String> data2 = [
    'Open:08:00',
    'Open:08:00',
    'Open:08:00',
    'Open:08:00',
  ];

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                SizedBox(
                  width: screenWidth,
                  height: screenHeight / 1.06,
                  child: const MapScreen(hideAppBar: true),
                ),
                Positioned(
                  top: 510,
                  left: 0,
                  right: 0,
                  child: Stack(
                    children: [
                      Container(
                        width: screenWidth,
                        height: screenHeight,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                        ),
                      ),
                      Positioned(
                        top: 18,
                        left: 200,
                        child: SizedBox(
                          width: screenWidth / 10,
                          height: screenHeight * 0.003,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.grey.withOpacity(0.71),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 70,
                  left: 0,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Page11()),
                      );
                    },
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                Positioned(
                  top: 560,
                  left: 10,
                  child: SizedBox(
                    width: screenWidth * 0.9,
                    height: screenHeight * 0.03,
                    child: const Text(
                      'Suggéré restaurants',
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                Positioned(
                  top: 600,
                  child: Align(
                    child: SizedBox(
                      width: screenWidth,
                      height: screenHeight * 0.25,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: screenWidth * 0.6,
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color.fromARGB(192, 0, 0, 0)
                                        .withOpacity(0.08),
                                    spreadRadius: 0,
                                    blurRadius: 8,
                                    offset: const Offset(8, 2),
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: screenWidth * 0.9,
                                    height: screenHeight * 0.14,
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        topRight: Radius.circular(30),
                                      ),
                                      child: Image.asset(
                                        imagePaths2[index],
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: screenHeight * 0.005,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  left: 8, bottom: 5),
                                              child: Text(
                                                texts2[index],
                                                style: const TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  left: 8, bottom: 5),
                                              child: RatingBar(
                                                itemSize: 20,
                                                initialRating:
                                                    4, // Replace with the actual rating value
                                                direction: Axis.horizontal,
                                                allowHalfRating: true,

                                                itemCount: 4,
                                                ratingWidget: RatingWidget(
                                                  full: const Icon(Icons.star,
                                                      color: Colors.amber),
                                                  half: const Icon(
                                                      Icons.star_half,
                                                      color: Colors.amber),
                                                  empty: const Icon(
                                                      Icons.star_border,
                                                      color: Colors.amber),
                                                ),
                                                onRatingUpdate: (rating) {
                                                  // Handle rating updates if needed
                                                },
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  left: 8),
                                              child: Text(
                                                texts2[index],
                                                style: const TextStyle(
                                                  fontSize: 9,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(
                                                left: 20, bottom: 28),
                                            child: Align(
                                              alignment: Alignment.centerRight,
                                              child: Container(
                                                width: screenWidth * 0.11,
                                                height: screenHeight * 0.025,
                                                decoration: BoxDecoration(
                                                  color: const Color.fromARGB(
                                                      255, 255, 209, 58),
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                ),
                                                child: Align(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    distance[index],
                                                    style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              SvgPicture.asset(
                                                'assets/images/clock.svg',
                                                width: 12,
                                                height: 12,
                                                color: Colors.black,
                                              ),
                                              SizedBox(
                                                  width: screenWidth * 0.01),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    right: 10),
                                                child: Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Text(
                                                    data2[index],
                                                    style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 10,
                                                      color: Colors.green,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
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
                onPressed: () {},
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
