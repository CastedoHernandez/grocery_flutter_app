import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_flutter_app/views/buyers/nav_scrrens/account_screen.dart';
import 'package:grocery_flutter_app/views/buyers/nav_scrrens/cart_screen%20.dart';
import 'package:grocery_flutter_app/views/buyers/nav_scrrens/category_screen.dart';
import 'package:grocery_flutter_app/views/buyers/nav_scrrens/home_screen.dart';
import 'package:grocery_flutter_app/views/buyers/nav_scrrens/search_screen.dart';
import 'package:grocery_flutter_app/views/buyers/nav_scrrens/store_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _pageIndex = 0;
  List<Widget> _pages = [
    const HomeScreen(),
    CategoryScreen(),
    StoreScreen(),
    CartScreen(),
    SearchScreen(),
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _pageIndex,
        onTap: (value) => {
          setState(() {
            _pageIndex = value;
          },)
        },
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.yellow.shade900,
        items: [
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.home), 
          label: 'HOME'),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/explore.svg', width: 20), 
          label: 'CATEGORIES'),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/shop.svg', width: 20), 
          label: 'STORE'),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/cart.svg', width: 20), 
          label: 'CART'),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/search.svg', width: 20), 
          label: 'SEARCH'),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/account.svg', width: 20), 
          label: 'ACCOUNT'),
      ]),
      body: _pages[_pageIndex],
    );
  }
}