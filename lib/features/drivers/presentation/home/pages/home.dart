import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uber_clone/features/drivers/presentation/home/pages/google_map.dart';
import 'package:uber_clone/features/drivers/presentation/profile/pages/profile_driver_screen.dart';

import '../../../../../core/styles/colors.dart';
import '../../record/page/record_screen.dart';
import '../requests/main_request_screen.dart';

class MainHomeDriverScreen extends StatefulWidget {
  @override
  _MainHomeDriverScreenState createState() => _MainHomeDriverScreenState();
}

class _MainHomeDriverScreenState extends State<MainHomeDriverScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    GoogleMapDriverScreen(),
    RequestScreen(),
    RecordScreen(),
    ProfileDriverScreen(),
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
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled, size: 30),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_outlined, size: 30),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fiber_smart_record_rounded, size: 30),
            label: 'Record',
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
