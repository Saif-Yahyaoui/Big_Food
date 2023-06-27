import 'dart:ui';
import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

class Page11 extends StatefulWidget {
  const Page11({Key? key}) : super(key: key);

  @override
  _Page11State createState() => _Page11State();
}

class _Page11State extends State<Page11> {
  int _selectedIndex = 0;
  bool obscureText = true;
  bool showPrefix = true;
  void toggleObscureText() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  // Define your pages or screens here
  List<Widget> _pages = [
    Page1(),
  ];

  void _onTabSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(140), // Set the desired height of the app bar
        child: AppBar(
          automaticallyImplyLeading: false, // Remove the default back button
          backgroundColor: Colors.red, // Set the background color to red
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40), // Rounded bottom left corner
              bottomRight: Radius.circular(40), // Rounded bottom right corner
            ),
          ),
          flexibleSpace: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 0, bottom: 80),
              child: Row(
                children: [
                  IconButton(
                    color: Colors.white,
                    iconSize: 32,
                    icon: Icon(Icons.menu),
                    onPressed: () {
                      // Handle menu button press
                    },
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Big Food',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * 0.08,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                  ),
                ],
              ),
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(
                  right: 16.0, top: 12), // Set the desired margin
              child: IconButton(
                onPressed: () {
                  // Handle bell icon press
                },
                icon: ImageIcon(
                  AssetImage(
                      'assets/images/bell.png'), // Replace with the path to your image
                  color: Colors.white,
                ),
              ),
            ),
          ],
          bottom: PreferredSize(
            preferredSize:
                Size.fromHeight(0), // Set the desired height of the search bar
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              height: 30, // Set the desired height
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                    onTap: toggleObscureText,
                    child: Image.asset(
                      "assets/images/search.png",
                      width: screenWidth * 0.04,
                      height: screenHeight * 0.03,
                    ),
                  ),
                  hintText: 'Que vas-tu trouver?', // Set the hint text
                  hintStyle: TextStyle(
                    color: Color(0xff707070).withOpacity(0.7),
                    fontSize: screenWidth * 0.035,
                    height: 0.8,
                    fontFamily: 'Poppins Regular',
                  ),
                  alignLabelWithHint: true,
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  List<String> imagePaths = [
    'assets/images/cocktail1.png',
    'assets/images/cocktail2.png',
    'assets/images/cocktail3.png',
    'assets/images/cocktail4.png',
    'assets/images/cocktail5.png',
  ];
  List<String> imagePaths2 = [
    'assets/images/pizza1.png',
    'assets/images/chiken.png',
    'assets/images/burger.png',
    'assets/images/frise.png',
    'assets/images/fingers.png',
  ];

  List<String> titles = [
    'Naturales',
  ];

  List<String> texts = [
    'Maltedas Tropicales',
  ];
  List<String> texts2 = [
    'Pizza 4 sizes',
    'Chiken thighs 2 pieces',
    'Cheese Burger ',
    'Small Fries',
    '5 Chicken fingers',
  ];
  List<String> data = [
    'Pink Lemonade',
    'Strawberry Lemonade',
    'Orange Mango Lemonade',
    'Sundown cocktail',
    'Mojito',
  ];
  List<String> data2 = [
    'Pizza',
    'Chiken thighs',
    'Burger',
    'Fries',
    'Chicken fingers',
  ];

  List<String> prices = [
    '\$12.58',
    '\$20.58',
    '\$10.58',
    '\$20.10',
    '\$10.99',
  ];
  List<String> prices2 = [
    '\$11.50',
    '\$8.50',
    '\$10.50',
    '\$3.20',
    '\$5.99',
  ];

  late final PageController pageController;
  late final ScrollController _scrollController; // Define the ScrollController
  int pageNo = 0;

  Timer? carasouelTimer;

  Timer getTimer() {
    return Timer.periodic(const Duration(seconds: 3), (timer) {
      if (pageNo == 5) {
        pageNo = 0;
      }
      pageController.animateToPage(
        pageNo,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOutCirc,
      );
      pageNo++;
    });
  }

  @override
  void initState() {
    pageController = PageController(initialPage: 0, viewportFraction: 0.8);
    _scrollController = ScrollController(); // Initialize the ScrollController
    carasouelTimer = getTimer();
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
    pageController.dispose();
    _scrollController.dispose();
    carasouelTimer?.cancel();
    super.dispose();
  }

  bool showBtmAppBr = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        controller: _scrollController,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          Container(
            margin:
                EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.03,
            child: Text(
              'Recommandés',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              height: 170,
              child: PageView.builder(
                controller: pageController,
                onPageChanged: (index) {
                  setState(() {
                    pageNo = index;
                  });
                },
                itemBuilder: (_, index) {
                  return AnimatedBuilder(
                    animation: pageController,
                    builder: (ctx, child) {
                      return child!;
                    },
                    child: GestureDetector(
                      onTap: () {},
                      onPanDown: (d) {
                        carasouelTimer?.cancel();
                        carasouelTimer = null;
                      },
                      onPanCancel: () {
                        carasouelTimer = getTimer();
                      },
                      child: Container(
                        margin: const EdgeInsets.only(
                          right: 5,
                          left: 5,
                          top: 30,
                          bottom: 20,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.white,
                        ),
                        child: Stack(
                          children: [
                            Row(
                              children: [
                                Container(
                                  child: Image.asset(imagePaths[index]),
                                  width:
                                      MediaQuery.of(context).size.width * 0.35,
                                  height:
                                      MediaQuery.of(context).size.height * 0.2,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.02),
                                      Text(
                                        titles[0],
                                        style: TextStyle(
                                          fontWeight: FontWeight.w200,
                                          fontSize: 16,
                                        ),
                                      ),
                                      SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.01),
                                      Text(
                                        texts[0],
                                        style: TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.001),
                                      Text(
                                        data[index],
                                        style: TextStyle(
                                          fontWeight: FontWeight.w200,
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.01),
                                      Text(
                                        prices[index],
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              width: MediaQuery.of(context).size.width * 0.05,
                              height: MediaQuery.of(context).size.height * 0.05,
                              bottom: 10,
                              right: 15,
                              child: Image.asset(
                                'assets/images/arrow.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                            Positioned(
                              top: 10,
                              right: 15,
                              child: Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                itemCount: imagePaths.length,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(5.0),
          ),
          Container(
            margin:
                EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.03,
            child: Text(
              'Categories',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Align(
            alignment: Alignment.centerLeft,
            child: Image.asset(
              'assets/images/Groupe défilant 9.png',
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.1,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Container(
            margin:
                EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.03,
            child: Text(
              'Les produits sont populaires',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Align(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.75,
              height: MediaQuery.of(context).size.height * 0.35,
              child: PageView.builder(
                controller:
                    PageController(initialPage: 0, viewportFraction: 0.8),
                itemCount: 5, // Replace with the actual number of items
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Stack(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.05,
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Image.asset(
                                        imagePaths2[index],
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.3,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.15,
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.02,
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(top: 4.0, left: 25),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          texts2[index],
                                          style: TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(top: 2.0, left: 25),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          data2[index],
                                          style: TextStyle(
                                            fontWeight: FontWeight.w200,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(top: 4.0, left: 25),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          prices2[index],
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            top: 10,
                            right: 15,
                            child: Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: showBtmAppBr
          ? FloatingActionButtonLocation.centerDocked
          : FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.home_filled,
        ),
      ),
      bottomNavigationBar: AnimatedContainer(
        child: BottomAppBar(
          notchMargin: 10.0,
          shape: const CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.home_outlined,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.heart,
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.cart,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.bell,
                ),
              ),
            ],
          ),
        ),
        duration: const Duration(
          milliseconds: 800,
        ),
        curve: Curves.easeInOutSine,
        height: showBtmAppBr ? 70 : 0,
      ),
    );
  }
}
