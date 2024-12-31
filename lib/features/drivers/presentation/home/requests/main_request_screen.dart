import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uber_clone/core/presentation/shared_widgets/common_appBar.dart';
import 'package:uber_clone/features/drivers/presentation/home/requests/ongoing_screen.dart';
import 'package:uber_clone/features/drivers/presentation/home/requests/rejected_screen.dart';

import '../../../../../../core/styles/colors.dart';
import '../../../../../../core/utils/sizes.dart';
import 'accepted_screen.dart';


class RequestScreen extends StatefulWidget {
  const RequestScreen({Key? key}) : super(key: key);

  @override
  State<RequestScreen> createState() => _RequestsState();
}

class _RequestsState extends State<RequestScreen> {
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
                          OngoingDriverScreen(),
                          AcceptedScreen(),
                          RegectedScreen()
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
        return 'Accepted';
      case 2:
        return 'Rejected';
      default:
        return '';
    }
  }
}
