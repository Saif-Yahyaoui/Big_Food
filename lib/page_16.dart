import 'dart:async';
import 'package:big_food/page_10.dart';
import 'package:big_food/page_11.dart';
import 'package:big_food/page_12.dart';
import 'package:big_food/page_17.dart';
import 'package:big_food/page_18.dart';
import 'package:big_food/page_6.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Page16 extends StatefulWidget {
  const Page16({Key? key}) : super(key: key);
  @override
  Page16State createState() => Page16State();
}

class Page16State extends State<Page16> {
  int _selectedIndex = 0;
  bool obscureText = true;
  bool showPrefix = true;
  void toggleObscureText() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  List<Widget> pages = [
    Page1(),
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
                        iconSize: 35,
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
              padding: const EdgeInsets.only(top: 12),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Page16()),
                  );
                },
                icon: const ImageIcon(
                  AssetImage('assets/images/sort.png'),
                  color: Colors.white,
                  size: 35,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0, top: 12),
              child: IconButton(
                onPressed: () {},
                icon: const ImageIcon(
                  AssetImage('assets/images/bell.png'),
                  color: Colors.white,
                  size: 35,
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
  const Page1({Key? key}) : super(key: key);

  @override
  Page1State createState() => Page1State();
}

class Page1State extends State<Page1> {
  late final PageController pageController;
  late final ScrollController _scrollController;
  int pageNo = 0;
  late List<bool> isSelected = List.generate(3, (_) => false);
  // RangeValues _selectedRange = const RangeValues(0, 200);

  // OverlayEntry? overlayEntry;
  // OverlayEntry? overlayEntry2;

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

  void _selectButton(int index) {
    setState(() {
      for (int buttonIndex = 0;
          buttonIndex < isSelected.length;
          buttonIndex++) {
        isSelected[buttonIndex] = (buttonIndex == index);
      }
    });
  }

  // void _showTooltip(BuildContext context, double value) {
  //   final tooltipValue = '\$${value.toInt().toString()}';

  //   final overlayEntry = OverlayEntry(
  //     builder: (context) => Positioned(
  //       top: 400, // Adjust the vertical position as desired
  //       left: value / 200 * MediaQuery.of(context).size.width,
  //       child: Tooltip(
  //         message: tooltipValue,
  //         child: Container(
  //           decoration: BoxDecoration(
  //             borderRadius: BorderRadius.circular(8),
  //             color: Colors.black.withOpacity(0.6),
  //           ),
  //           padding: const EdgeInsets.all(4),
  //           child: Text(
  //             tooltipValue,
  //             style: const TextStyle(
  //               color: Colors.white,
  //               fontWeight: FontWeight.bold,
  //             ),
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  //   Overlay.of(context)?.insert(overlayEntry);
  // }

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
                  left: screenWidth * 0.05,
                  top: screenHeight * 0.005,
                ),
                width: screenWidth * 0.18,
                height: screenHeight * 0.03,
                child: const Text(
                  'Category',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(width: screenWidth * 0.6),
              SizedBox(
                width: screenWidth * 0.1,
                height: screenHeight * 0.03,
                child: const Text(
                  'clear',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.02),
          ToggleButtons(
            fillColor: Colors.red,
            borderColor: Colors.transparent,
            selectedColor: Colors.white,
            borderRadius: BorderRadius.circular(8),
            constraints: BoxConstraints(
              minWidth: screenWidth * 0.3,
              minHeight: screenHeight * 0.05,
            ),
            isSelected: isSelected,
            onPressed: (int index) {
              _selectButton(index);
            },
            children: const [
              Text('Food'),
              Text('Drinks'),
              Text('Dessert'),
            ],
          ),
          SizedBox(height: screenHeight * 0.02),
          Container(
            margin: EdgeInsets.only(
              left: screenWidth * 0.05,
              top: screenHeight * 0.005,
            ),
            width: screenWidth * 0.18,
            height: screenHeight * 0.03,
            child: const Text(
              'Price',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.04),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: screenWidth * 0.25,
                height: screenHeight * 0.05,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Low to High',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: screenWidth * 0.25,
                height: screenHeight * 0.05,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'High to Low',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: screenWidth * 0.25,
                height: screenHeight * 0.05,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Discount',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.04),
          Container(
            margin: EdgeInsets.only(
              left: screenWidth * 0.05,
              top: screenHeight * 0.005,
            ),
            width: screenWidth * 0.18,
            height: screenHeight * 0.03,
            child: const Text(
              'Rating',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // RangeSlider(
          //   values: _selectedRange,
          //   min: 0,
          //   max: 200,
          //   onChanged: (RangeValues values) {
          //     setState(() {
          //       _selectedRange = values;
          //     });
          //   },
          //   labels: RangeLabels(
          //     '\$${_selectedRange.start.toInt().toString()}', // Start value label
          //     '\$${_selectedRange.end.toInt().toString()}', // End value label
          //   ),
          //   onChangeStart: (RangeValues values) {
          //     _showTooltip(context, values.start);
          //     _showTooltip(context, values.end);
          //   },
          //   onChangeEnd: (RangeValues values) {
          //     final startValue = values.start.toInt();
          //     final endValue = values.end.toInt();
          //     final tooltipStartValue = '\$$startValue';
          //     final tooltipEndValue = '\$$endValue';

          //     overlayEntry = OverlayEntry(
          //       builder: (context) => Positioned(
          //         top: 400,
          //         left: startValue / 200 * MediaQuery.of(context).size.width,
          //         child: Tooltip(
          //           message: tooltipStartValue,
          //           child: Text(tooltipStartValue),
          //         ),
          //       ),
          //     );
          //     Overlay.of(context)?.insert(overlayEntry!);

          //     overlayEntry2 = OverlayEntry(
          //       builder: (context) => Positioned(
          //         top: 500,
          //         left: endValue / 200 * MediaQuery.of(context).size.width,
          //         child: Tooltip(
          //           message: tooltipEndValue,
          //           child: Text(tooltipEndValue),
          //         ),
          //       ),
          //     );
          //     Overlay.of(context)?.insert(overlayEntry2!);
          //   },
          // ),
          SizedBox(height: screenHeight * 0.02),
          Container(
            margin: EdgeInsets.only(
              left: screenWidth * 0.05,
              top: screenHeight * 0.005,
            ),
            width: screenWidth * 0.18,
            height: screenHeight * 0.03,
            child: const Text(
              'ingredients',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.02),
          Container(
            margin: EdgeInsets.only(
              left: screenWidth * 0.05,
              top: screenHeight * 0.005,
            ),
            width: screenWidth * 0.18,
            height: screenHeight * 0.03,
            child: const Text(
              'Ingredient',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
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
