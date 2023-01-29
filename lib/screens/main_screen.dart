import 'package:curved_navigation_bar/curved_navigation_bar.dart';
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
      bottomNavigationBar: CurvedNavigationBar(
        onTap: (value) {
          setState(() {
            _selectedScreenIndex = value;
          });
        },
        backgroundColor: Color(0xff313666),
        color: mainBlack,
        animationCurve: Curves.linear,
        buttonBackgroundColor: Color(0xff313666),
        index: _selectedScreenIndex,
        items: [
          Image.asset('assets/images/profile.png'),
          Image.asset('assets/images/save-2.png'),
          Image.asset('assets/images/add-circle.png'),
          Image.asset('assets/images/discover.png'),
          Image.asset('assets/images/home.png')
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
