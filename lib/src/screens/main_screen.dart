import 'package:flutter/material.dart';
import 'package:food/src/pages/favorite_page.dart';
// pages
import 'package:food/src/pages/home_page.dart';
import 'package:food/src/pages/order_page.dart';
import 'package:food/src/pages/profile_page.dart';
import 'package:food/src/scoped_model/main_model.dart';

class MainScreen extends StatefulWidget {
  final MainModel foodModel;

  MainScreen({required this.foodModel});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTabIndex = 0;
  late List<Widget> pages;
  late Widget currentPage;

  late HomePage homepage;
  late OrderPage orderPage;
  late FavoritePage favoritePage;
  late ProfilePage profilePage;

  @override
  void initState() {
    //call api fetchFoods
    widget.foodModel.fetchFoods();

    homepage = HomePage();
    orderPage = OrderPage();
    favoritePage = FavoritePage();
    profilePage = ProfilePage();
    pages = [homepage, orderPage, favoritePage, profilePage];
    currentPage = homepage;
    super.initState();
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
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Order'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorites'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
      body: currentPage,
    );
  }
}
