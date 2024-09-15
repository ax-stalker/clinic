import 'package:flutter/material.dart';
import 'home_page.dart';
import 'pharmacy_screen.dart';
import 'appointment_page.dart';
import 'profile_screen.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    PharmacyScreen(),
    AppointmentPage(),  // Make sure AppointmentPage is correctly defined
    ProfileScreen(),
  ];

  void _onTabChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onTabChanged,
        backgroundColor: Colors.white, // Background color of the navigation bar
        selectedItemColor: Colors.purple.shade700, // Color of the selected item
        unselectedItemColor: Colors.grey, // Color of the unselected items
        elevation: 5, // Add shadow to the bottom navigation bar
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_pharmacy),
            label: 'Pharmacy',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Appointments',
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
