import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'AppTheme.dart';
import 'HomePages.dart';
import 'main.dart';

class PortfolioMainPage extends StatefulWidget {
  @override
  _PortfolioMainPageState createState() => _PortfolioMainPageState();
}

class _PortfolioMainPageState extends State<PortfolioMainPage> {
  static bool _isDarkMode = false;
  int a=0;
  int _selectedIndex = 0;
  PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    _updateTheme();
  }

  void _updateTheme() {
    runApp(const MyApp());
    setState(() {
      if (_isDarkMode) {
        // Apply dark theme
        MyAppTheme.applyDarkTheme();
      } else {
        // Apply light theme
        MyAppTheme.applyLightTheme();
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Portfolio'),
        centerTitle: true,
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: [
          // Pages for each tab
          PortfolioHomePage(isDarkMode:_isDarkMode),
          Center(child: Text('Profile Page')),
          Center(child: Text('Settings Page')),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
            _pageController.animateToPage(
              index,
              duration: Duration(milliseconds: 300),
              curve: Curves.ease,
            );
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isDarkMode = !_isDarkMode;
            _updateTheme();
            print("Theme changed to ${_isDarkMode ? 'Dark' : 'Light'} $a");
            // runApp(const MyApp());
            a++;
          });
          // window.scheduleFrame();

        },
        child: Icon(Icons.lightbulb),
      ),
    );
  }
}
