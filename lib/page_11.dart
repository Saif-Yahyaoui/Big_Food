import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

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
    Page2(),
    Page3(),
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
                  hintText: 'Que vas-tu trouver ?', // Set the hint text
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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onTabSelected,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Page 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Page 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Page 3',
          ),
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          Container(
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
          Container(
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.2,
            alignment: Alignment.centerLeft,
            child: Image.asset(
              'assets/images/Groupe défilant 7.png',
            ),
          ),
          Container(
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
          Container(
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.4,
            alignment: Alignment.centerLeft,
            child: Image.asset(
              'assets/images/Groupe défilant 11.png',
            ),
          ),
        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Page 2'),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Page 3'),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Page11(),
  ));
}
