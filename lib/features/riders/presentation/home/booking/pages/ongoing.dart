import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/presentation/shared_widgets/status_container.dart';
import '../../../../../../core/styles/colors.dart';
import '../../../widget/bottom_sheet.dart';

class OngoingScreen extends StatefulWidget {
  const OngoingScreen({Key? key}) : super(key: key);

  @override
  State<OngoingScreen> createState() => _OngoingScreenState();
}

class _OngoingScreenState extends State<OngoingScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Ongoing Screen'),
        backgroundColor:
            ColorManager.backGround, // استخدم الألوان المناسبة من ملفك
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        child: ListView.separated(
          itemBuilder: (context, index) {
            return statusContainer(
              title: 'City Star Parking',
              streetTitle: 'Al Thahraa st.',
              timer: '3 Hours',
              numberOfCar: '40',
              buttomTitle: 'Book',
              ontap: () {
                showParkingDetails(context);
              },
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(height: screenHeight * 0.01);
          },
          itemCount: 5,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
        ),
      ),
    );
  }
}
