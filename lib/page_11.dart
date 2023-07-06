import 'dart:async';
import 'package:big_food/page_10.dart';
import 'package:big_food/page_6.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
        preferredSize: Size.fromHeight(140),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xFFFF0000),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
          ),
          flexibleSpace: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 0, bottom: 80),
              child: Row(
                children: [
                  Builder(
                    builder: (BuildContext context) {
                      return IconButton(
                        color: Colors.white,
                        iconSize: 32,
                        icon: Icon(Icons.menu),
                        onPressed: () {
                          // Open the drawer when the button is pressed
                          Scaffold.of(context).openDrawer();
                        },
                      );
                    },
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Big Food',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * 0.09,
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
              padding: EdgeInsets.only(right: 16.0, top: 12),
              child: IconButton(
                onPressed: () {
                  // Handle bell icon press
                },
                icon: ImageIcon(
                  AssetImage('assets/images/bell.png'),
                  color: Colors.white,
                ),
              ),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(0),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              height: 30,
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
                  hintText: 'Que vas-tu trouver?',
                  hintStyle: TextStyle(
                    color: Color(0xff707070).withOpacity(0.7),
                    fontSize: screenWidth * 0.035,
                    height: 0.6,
                    fontFamily: 'Poppins Regular',
                  ),
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
      drawer: Drawer(
        backgroundColor: Color(0xFFFF0000),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(40),
          ),
        ),
        child: ListView(
          children: [
            SizedBox(height: screenHeight * 0.05),
            DrawerHeader(
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        'Bonjour',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Saif Yahyaoui',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'saif.yahyaoui@esprit.tn',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 20,
                    right: 0,
                    child: Container(
                      width: screenWidth * 0.23,
                      height: screenHeight * 0.13,
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/profile.png"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Image.asset('assets/images/user.png'),
              title: Text(
                'Profile',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page10()),
                );
              },
            ),
            ListTile(
              leading: Image.asset('assets/images/cart.png'),
              title: Text(
                'Mes commandes',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Image.asset('assets/images/gift.png'),
              title: Text(
                'Parrainez vos amis',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Image.asset('assets/images/promo.png'),
              title: Text(
                'Code promo',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Image.asset('assets/images/faq.png'),
              title: Text(
                'F.A.Q',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Image.asset('assets/images/setting.png'),
              title: Text(
                'Paramétre',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Image.asset('assets/images/info.png'),
              title: Text(
                'Qui Somme Nous',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Image.asset('assets/images/logout.png'),
              title: Text(
                'Déconnexion',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page6()),
                );
              },
            ),
          ],
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
  final List<String> images = [
    'assets/images/tacos.png',
    'assets/images/frias.png',
    'assets/images/burger2.png',
    'assets/images/pizza.png',
    'assets/images/burrito.png',
    // Add more image paths as needed
  ];
  final List<String> imageTitles = [
    'Tacos',
    'Frias',
    'Burger',
    'Pizza',
    'Burritos',
    // Add more titles corresponding to the images
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
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        controller: _scrollController,
        children: [
          SizedBox(height: screenHeight * 0.03),
          Container(
            margin: EdgeInsets.only(left: screenWidth * 0.05),
            width: screenWidth * 0.9,
            height: screenHeight * 0.03,
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
                          boxShadow: [
                            BoxShadow(
                              color:
                                  Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
                              spreadRadius: 0,
                              blurRadius: 10,
                              offset:
                                  Offset(8, 2), // change the offset if needed
                            ),
                          ],
                        ),
                        child: Stack(
                          children: [
                            Row(
                              children: [
                                Container(
                                  child: Image.asset(imagePaths[index]),
                                  width: screenWidth * 0.35,
                                  height: screenHeight * 0.2,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: screenHeight * 0.02,
                                      ),
                                      Text(
                                        titles[0],
                                        style: TextStyle(
                                          fontWeight: FontWeight.w200,
                                          fontSize: 16,
                                        ),
                                      ),
                                      SizedBox(
                                        height: screenHeight * 0.01,
                                      ),
                                      Text(
                                        texts[0],
                                        style: TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(
                                        height: screenHeight * 0.001,
                                      ),
                                      Text(
                                        data[index],
                                        style: TextStyle(
                                          fontWeight: FontWeight.w200,
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(
                                        height: screenHeight * 0.01,
                                      ),
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
                              width: screenWidth * 0.05,
                              height: screenHeight * 0.05,
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
                                color: Color(0xFFFF0000),
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
          Padding(
            padding: EdgeInsets.all(5.0),
          ),
          Container(
            margin: EdgeInsets.only(left: screenWidth * 0.05),
            width: screenWidth * 0.9,
            height: screenHeight * 0.03,
            child: Text(
              'Categories',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.02),
          CarouselSlider(
            items: images.asMap().entries.map((entry) {
              final int index = entry.key;
              final String image = entry.value;
              final String title = imageTitles[index];
              return Builder(
                builder: (BuildContext context) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Handle image tap event
                        },
                        child: Image.asset(
                          image,
                          width: 60,
                        ),
                      ),
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  );
                },
              );
            }).toList(),
            options: CarouselOptions(
              height: screenHeight * 0.11,
              autoPlay: false,
              enlargeCenterPage: false,
              initialPage: 2,
              viewportFraction: 0.2,
            ),
          ),
          SizedBox(height: screenHeight * 0.02),
          Container(
            margin: EdgeInsets.only(left: screenWidth * 0.05),
            width: screenWidth * 0.9,
            height: screenHeight * 0.03,
            child: Text(
              'Les produits sont populaires',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.02),
          Align(
            child: Container(
              width: screenWidth * 0.95,
              height: screenHeight * 0.33,
              child: GridView.builder(
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
                        boxShadow: [
                          BoxShadow(
                            color:
                                Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
                            spreadRadius: 0,
                            blurRadius: 10,
                            offset: Offset(8, 2), // change the offset if needed
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          Positioned.fill(
                            left: 20,
                            right: 20,
                            bottom: 95,
                            top: 15,
                            child: Container(
                              child: Center(
                                child: Container(
                                  width: 110,
                                  height: 110,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromARGB(255, 0, 130, 255)
                                            .withOpacity(0.1),
                                        spreadRadius: 18,
                                        blurRadius: 15,
                                        offset: Offset(0, 0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: screenHeight * 0.03,
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        width: screenWidth * 0.29,
                                        height: screenHeight * 0.16,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Colors.white,
                                            width: 10,
                                          ),
                                        ),
                                        child: Image.asset(
                                          imagePaths2[index],
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: screenHeight * 0.02,
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
                                            fontSize: 10,
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
                              color: Color(0xFFFF0000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                 ),
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.08),
        ],
      ),
      floatingActionButtonLocation: showBtmAppBr
          ? FloatingActionButtonLocation.centerDocked
          : FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        materialTapTargetSize: MaterialTapTargetSize.padded,
        onPressed: () {},
        child: const Icon(
          Icons.home_filled,
          size: 30,
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
                  CupertinoIcons.map_fill,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.cart_fill,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.heart_fill,
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
}
