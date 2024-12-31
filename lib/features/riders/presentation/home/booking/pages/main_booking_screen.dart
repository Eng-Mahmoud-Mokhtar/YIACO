import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uber_clone/core/presentation/shared_widgets/common_appBar.dart';

import '../../../../../../core/styles/colors.dart';
import '../../../../../../core/utils/sizes.dart';
import 'cancelled.dart';
import 'complete.dart';
import 'ongoing.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  State<BookingScreen> createState() => _RequestsState();
}

class _RequestsState extends State<BookingScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backGround,
      appBar: appBarContent(title: "Booking", context: context),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Expanded(
              child: DefaultTabController(
                length: 3,
                child: Column(
                  children: [
                    TabBar(
                      onTap: (index) {
                        setState(() {
                          _selectedIndex = index;
                        });
                      },
                      indicator: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      labelColor: ColorManager.backGround,
                      unselectedLabelColor: ColorManager.navyBlue,
                      tabs: List.generate(3, (index) {
                        return Tab(
                          child: _selectedIndex == index
                              ? Container(
                                  decoration: BoxDecoration(
                                    color: ColorManager.navyBlue,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  height: 35.h,
                                  width: 140.w,
                                  child: Center(child: Text(_tabText(index))),
                                )
                              : Center(child: Text(_tabText(index))),
                        );
                      }),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          OngoingScreen(),
                          CompletedScreen(),
                          CancelledScreen()
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _tabText(int index) {
    switch (index) {
      case 0:
        return 'Ongoing';
      case 1:
        return 'Completed';
      case 2:
        return 'cancelled';
      default:
        return '';
    }
  }
}
