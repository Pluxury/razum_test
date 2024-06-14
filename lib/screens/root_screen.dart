import 'package:flutter/material.dart';
import 'package:razum_test/screens/news_screen/news_screen.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NewsScreen(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Список',
            icon: Icon(Icons.book),
          ),
          BottomNavigationBarItem(
            label: 'Детали',
            icon: Icon(Icons.star),
          ),
          BottomNavigationBarItem(
            label: 'Настройки',
            icon: Icon(Icons.portable_wifi_off_outlined),
          ),
        ],
      ),
    );
  }
}
