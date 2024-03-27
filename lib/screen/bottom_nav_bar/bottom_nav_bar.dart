
import 'package:flutter/material.dart';
import 'package:medical_app_anurag/screen/bottom_nav_bar/home/home_screen.dart';
import 'package:medical_app_anurag/screen/bottom_nav_bar/home/home_screen2.dart';
import 'package:medical_app_anurag/screen/bottom_nav_bar/menu/menu_screen.dart';
import 'package:medical_app_anurag/screen/bottom_nav_bar/pills/pills_screen.dart';
import 'package:medical_app_anurag/screen/bottom_nav_bar/wallet/wallet_screen.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState
    extends State<BottomNavigationBarScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptionsForStudents = <Widget>[
    // HomeScreen(),
    HomeScreen2(),
    WalletScreen(),
    PillsScreen(),
    MenuScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptionsForStudents.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _selectedIndex == 0 ? Colors.blueGrey : Colors.grey,
              size: 30,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.wallet,
              color: _selectedIndex == 1 ? Colors.blueGrey : Colors.grey,
              size: 30,
            ),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.medication_outlined,
              color: _selectedIndex == 2 ? Colors.blueGrey : Colors.grey,
              size: 30,
            ),
            label: 'Pills',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.support_agent,
              color: _selectedIndex == 3 ? Colors.blueGrey : Colors.grey,
              size: 30,
            ),
            label: 'Menu',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: const TextStyle(
          fontSize: 10,
          color: Colors.blueGrey,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 10,
          color: Colors.grey
        ),
        onTap: _onItemTapped,
      ),
    );
  }
}
