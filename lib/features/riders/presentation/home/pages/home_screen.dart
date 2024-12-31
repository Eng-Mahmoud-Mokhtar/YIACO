import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/styles/colors.dart';
import '../../explore/pages/explore_screen.dart';
import '../../profile/pages/profile_screen.dart';
import '../booking/pages/main_booking_screen.dart';
 import 'googlemap_screen.dart';

class MainHomeRiderScreen extends StatefulWidget {
  @override
  _MainHomeRiderScreenState createState() => _MainHomeRiderScreenState();
}

class _MainHomeRiderScreenState extends State<MainHomeRiderScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    GoogleMapRiderScreen(),
    BookingScreen(),
    ExploreScreen(),
    ProfileRiderScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(375, 812), minTextAdapt: true, splitScreenMode: true);

    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled, size: 30),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_outlined, size: 30),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, size: 30),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 30),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: ColorManager.lightGreen,
        unselectedItemColor: ColorManager.greyText,
        onTap: _onItemTapped,
      ),
    );
  }
}
