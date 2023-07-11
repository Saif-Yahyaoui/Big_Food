import 'dart:async';
import 'package:big_food/page_10.dart';
import 'package:big_food/page_12.dart';
import 'package:big_food/page_18.dart';
import 'package:big_food/page_6.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Page17 extends StatefulWidget {
  const Page17({Key? key}) : super(key: key);
  @override
  Page17State createState() => Page17State();
}

class Page17State extends State<Page17> {
  int _selectedIndex = 0;
  bool obscureText = true;
  bool showPrefix = true;
  void toggleObscureText() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  List<Widget> pages = [
    const Page1(),
  ];
  void onTabSelected(int index) {
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
          backgroundColor: const Color(0xFFFF0000),
          shape: const RoundedRectangleBorder(
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
                        icon: const Icon(Icons.menu),
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                      );
                    },
                  ),
                  SizedBox(width: screenWidth * 0.01),
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
              padding: const EdgeInsets.only(right: 16.0, top: 12),
              child: IconButton(
                onPressed: () {},
                icon: const ImageIcon(
                  AssetImage('assets/images/bell.png'),
                  color: Colors.white,
                ),
              ),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(0),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
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
                    color: const Color(0xff707070).withOpacity(0.7),
                    fontSize: screenWidth * 0.035,
                    height: 0.6,
                    fontFamily: 'Poppins-Regular',
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
        backgroundColor: const Color(0xFFFF0000),
        shape: const RoundedRectangleBorder(
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
                      const Text(
                        'Bonjour Saif !',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      const Text(
                        'Saif Yahyaoui',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(height: 4),
                      const Text(
                        'saif.yahyaoui@esprit.tn',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 30,
                    right: 0,
                    child: SizedBox(
                      width: screenWidth * 0.2,
                      height: screenHeight * 0.1,
                      child: const CircleAvatar(
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
              title: const Text(
                'Profile',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Page10()),
                );
              },
            ),
            ListTile(
              leading: Image.asset('assets/images/cart.png'),
              title: const Text(
                'Mes commandes',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Page18()),
                );
              },
            ),
            ListTile(
              leading: Image.asset('assets/images/gift.png'),
              title: const Text(
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
              title: const Text(
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
              title: const Text(
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
              title: const Text(
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
              title: const Text(
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
              title: const Text(
                'Déconnexion',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Page6()),
                );
              },
            ),
          ],
        ),
      ),
      body: pages[_selectedIndex],
    );
  }
}

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  Page1State createState() => Page1State();
}

class Page1State extends State<Page1> {
  List<String> image = [
    'assets/images/food1.png',
    'assets/images/food2.png',
    'assets/images/food3.png',
    'assets/images/food4.png',
    'assets/images/food5.png',
  ];

  List<String> title = [
    'Korean Salede',
    'Korean Sushi',
    'Vegan Salade',
    'Egg Salade',
    'Korean Salede',
  ];

  List<String> subTitle = [
    'Sushi . Korean Sushi',
  ];

  List<String> rating = [
    '4.9(124 ratings)',
  ];
  List<String> location = [
    'No 03, 4th Lane, Newyork',
  ];

  late final PageController pageController;
  late final ScrollController _scrollController;
  int pageNo = 0;

  @override
  void initState() {
    pageController = PageController(initialPage: 0, viewportFraction: 0.8);
    _scrollController = ScrollController();
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
          SizedBox(height: screenHeight * 0.02),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                    left: screenWidth * 0.05, top: screenHeight * 0.005),
                width: screenWidth * 0.12,
                height: screenHeight * 0.03,
                child: const Text(
                  'Filter:',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                width: screenWidth * 0.24,
                height: screenHeight * 0.03,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 245, 245, 245),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Stack(
                  children: [
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Hamburger ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Color(0xFF989898),
                        ),
                      ),
                    ),
                    Positioned(
                      width: screenWidth * 0.026,
                      height: screenHeight * 0.017,
                      right: 6,
                      top: 6,
                      child: GestureDetector(
                        onTap: () {
                          // Add your onTap logic here
                        },
                        child: SvgPicture.asset(
                          "assets/images/x.svg",
                          width: screenWidth * 0.04,
                          height: screenHeight * 0.03,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: screenWidth * 0.02),
              Container(
                width: screenWidth * 0.24,
                height: screenHeight * 0.03,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 245, 245, 245),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Stack(
                  children: [
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Pancakes',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Color(0xFF989898),
                        ),
                      ),
                    ),
                    Positioned(
                      width: screenWidth * 0.026,
                      height: screenHeight * 0.017,
                      right: 6,
                      top: 6,
                      child: GestureDetector(
                        onTap: () {
                          // Add your onTap logic here
                        },
                        child: SvgPicture.asset(
                          "assets/images/x.svg",
                          width: screenWidth * 0.04,
                          height: screenHeight * 0.03,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: screenWidth * 0.02),
              Container(
                width: screenWidth * 0.24,
                height: screenHeight * 0.03,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 245, 245, 245),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Stack(
                  children: [
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Chicken',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Color(0xFF989898),
                        ),
                      ),
                    ),
                    Positioned(
                      width: screenWidth * 0.026,
                      height: screenHeight * 0.017,
                      right: 6,
                      top: 6,
                      child: GestureDetector(
                        onTap: () {
                          // Add your onTap logic here
                        },
                        child: SvgPicture.asset(
                          "assets/images/x.svg",
                          width: screenWidth * 0.04,
                          height: screenHeight * 0.03,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Align(
            child: SizedBox(
              width: screenWidth * 0.9,
              height: screenHeight * 0.67,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 0, 0, 0)
                                .withOpacity(0.05),
                            spreadRadius: 0,
                            blurRadius: 10,
                            offset: const Offset(8, 2),
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Align(
                                      child: SizedBox(
                                        width: screenWidth * 0.27,
                                        height: screenHeight * 0.12,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.asset(
                                            image[index],
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: screenHeight * 0.02,
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 5.0),
                                            child: Align(
                                              child: Text(
                                                title[index],
                                                style: const TextStyle(
                                                  fontSize: 17,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 5.0),
                                            child: Align(
                                              child: Text(
                                                subTitle[0],
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.w200,
                                                  fontSize: 12,
                                                  color: Color(0xFFB6B7B7),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 8.0),
                                            child: Align(
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    // Add the desired prefix icon here
                                                    Icons.star,
                                                    color: Color(0xFFFF7A31),
                                                    size: 16,
                                                  ),
                                                  SizedBox(width: 4),
                                                  Text(
                                                    rating[0],
                                                    style: const TextStyle(
                                                      fontSize: 13,
                                                      color: Color(0xFFFF7A31),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 8.0),
                                            child: Align(
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    // Add the desired prefix icon here
                                                    Icons.location_on,
                                                    color: Color(0xFFFF7A31),
                                                    size: 16,
                                                  ),
                                                  SizedBox(width: 4),
                                                  Text(
                                                    location[0],
                                                    style: const TextStyle(
                                                      fontSize: 13,
                                                      color: Color(0xFFFF7A31),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
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
