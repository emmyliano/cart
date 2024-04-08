import 'package:cart/HomeScreens/account.dart';
import 'package:cart/HomeScreens/categories.dart';
import 'package:cart/HomeScreens/homepage.dart';
import 'package:cart/HomeScreens/notifications.dart';
import 'package:flutter/material.dart';

class HomeScreensNav extends StatefulWidget {
  const HomeScreensNav({super.key});

  @override
  State<HomeScreensNav> createState() => _HomeScreensNavState();
}

class _HomeScreensNavState extends State<HomeScreensNav> {

  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomepageScreen(),
    const CategoriesScreen(),
    const NotificationsScreen(),
    const AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          
        ],
      ),

    );
  }
}