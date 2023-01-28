import 'package:flutter/material.dart';
import 'package:news/constants/constants.dart';
import 'package:news/screens/home_screen.dart';
import 'package:news/screens/news_screen.dart';
import 'package:news/screens/subtitle_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedScreenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      // extendBody: true,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _selectedScreenIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: mainBlack,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedScreenIndex,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/profile.png'),
            label: 'item-1',
          ),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/save-2.png'), label: 'item-2'),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/add-circle.png'),
              label: 'item-3'),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/discover.png'), label: 'item-4'),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/home.png'), label: 'item-5'),
        ],
      ),
      body: IndexedStack(
        index: _selectedScreenIndex,
        children: _getLayout(),
      ),
    );
  }

  List<Widget> _getLayout() => [
        HomeScreen(),
        SubtitleScreen(),
        NewsScreen(),
        SubtitleScreen(),
        HomeScreen(),
      ];
}
