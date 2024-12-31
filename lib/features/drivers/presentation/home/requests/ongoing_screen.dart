import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uber_clone/core/styles/text_style.dart';

import '../../../../../../core/presentation/shared_widgets/status_container.dart';
import '../../../../../../core/styles/colors.dart';

class OngoingDriverScreen extends StatefulWidget {
  const OngoingDriverScreen({Key? key}) : super(key: key);

  @override
  State<OngoingDriverScreen> createState() => _OngoingDriverScreenState();
}

class _OngoingDriverScreenState extends State<OngoingDriverScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        child: ListView.separated(
          itemBuilder: (context, index) {
            return containerDetails();
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

Widget containerDetails() {
  return Container(
    padding: EdgeInsets.all(16.0),
    margin: EdgeInsets.all(10.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20.0),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          blurRadius: 10.0,
          spreadRadius: 2.0,
          offset: Offset(0, 4),
        ),
      ],
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(
                  'assets/images/Mask group(1).png'), // ضع صورة المستخدم هنا
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Mahytab Adel', style: StyleManger.navyBlue15w400()),
                SizedBox(height: 4),
                Row(
                  children: [
                    Icon(Icons.directions_car, size: 16, color: Colors.teal),
                    SizedBox(width: 4),
                    Text('KIA A15683', style: StyleManger.lightGreen15w500()),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: const [
                    Icon(Icons.person, size: 16, color: Colors.grey),
                    SizedBox(width: 4),
                    Text('39'),
                    SizedBox(width: 10),
                    Icon(Icons.access_time, size: 16, color: Colors.grey),
                    SizedBox(width: 4),
                    Text('3 Hours'),
                  ],
                ),
              ],
            ),
          ],
        ),
        Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: ColorManager.lightGreen,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              child: Text('Accept'),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: ColorManager.lightRed,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              child: Text('Reject'),
            ),
          ],
        ),
      ],
    ),
  );
}
