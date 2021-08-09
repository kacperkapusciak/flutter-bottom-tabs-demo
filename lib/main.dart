import 'package:flutter/material.dart';

import 'screens/HomeScreen.dart';
import 'screens/DiscoverScreen.dart';
import 'screens/SettingsScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomTabsNavigator(),
    );
  }
}

class BottomTabsNavigator extends StatefulWidget {
  @override
  State<BottomTabsNavigator> createState() => _BottomTabsNavigatorState();
}

class _BottomTabsNavigatorState extends State<BottomTabsNavigator> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    DiscoverScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _screens[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blue,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
