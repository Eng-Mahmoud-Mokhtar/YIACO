import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uber_clone/core/styles/text_style.dart';

import '../../../../../core/presentation/shared_widgets/common_appBar.dart';
import '../../../../../core/styles/colors.dart';
import '../../../../../core/utils/sizes.dart';
import '../../../../riders/presentation/profile/pages/cupoun_screen.dart';
import '../../widget/container_statues.dart';

class RecordScreen extends StatefulWidget {
  @override
  State<RecordScreen> createState() => _RecordScreenState();
}

class _RecordScreenState extends State<RecordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarContent(title: "Record", context: context),
        body: Padding(
            padding: EdgeInsets.only(bottom: 20.h),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50.r),
                  bottomRight: Radius.circular(50.r),
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    offset: Offset(0, 0),
                    blurRadius: 4,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListView.separated(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return containerStatusDriver(
                        statues: 'complete',
                        name: 'Mohamed Hamed',
                        numberOfCars: '30',
                        timer: '3 Hours',
                        carName: 'kia 1230',
                        containerColor: ColorManager.lightGreen,
                        statuesColor: ColorManager.navyBlue);
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return spaceHeight(15.h);
                  },
                ),
              ),
            )));
  }
}


