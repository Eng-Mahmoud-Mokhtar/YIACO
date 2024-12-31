import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uber_clone/core/presentation/shared_widgets/common_appBar.dart';
import 'package:uber_clone/core/styles/text_style.dart';

import '../../../../../core/presentation/shared_widgets/notification_container.dart';
import '../../../../../core/styles/colors.dart';
import '../../../../../core/utils/sizes.dart';

class NotificationRiderScreen extends StatefulWidget {
  const NotificationRiderScreen({Key? key}) : super(key: key);

  @override
  State<NotificationRiderScreen> createState() => _NotificationRiderScreenState();
}

class _NotificationRiderScreenState extends State<NotificationRiderScreen> {
  int selectedContainerIndex = -1; // No container is selected initially

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.backGround,
        appBar:  appBarContent(title: "notification", context: context),
        body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 15),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

              spaceHeight(30.h),
              Text("Today", style: StyleManger.navyBlue15w500()),
              spaceHeight(15.h),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedContainerIndex = 0; // First container selected
                    });
                  },
                  child: notificationContainer(
                      title: 'Parking Booking Cancelled',
                      time: '1 min ago',
                      description:
                          'Parking request has been cancelled, Parking request\n has been cancelled')),
              spaceHeight(20.h),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedContainerIndex = 1; // First container selected
                    });
                  },
                  child: notificationContainer(
                      title: 'Parking Booking Cancelled',
                      time: '1 min ago',
                      description:
                          'Parking request has been cancelled, Parking request\n has been cancelled')),
            ])));
  }
}
