
import 'package:flutter/material.dart';

// pages
import 'package:food/src/pages/home_page.dart';

class MainScreen extends StatefulWidget {

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int currentTabIndex = 0;
  late List<Widget>pages;
  late HomePage homepage;
  late Widget currentPage;

  @override
  void initState() {
    super.initState();
    homepage = HomePage();
    pages = [homepage];
    currentPage = homepage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            currentTabIndex = index;
            currentPage = pages[index];
          });
        },
        currentIndex: currentTabIndex,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
              label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Order'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
              label: 'Favorites'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
              label: 'Profile'
          ),
        ],
      ),
      body: currentPage,
    );
  }
}
