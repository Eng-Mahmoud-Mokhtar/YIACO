import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uber_clone/core/presentation/shared_widgets/common_appBar.dart';
import 'package:uber_clone/core/styles/text_style.dart';

import '../../../../../core/styles/colors.dart';
import '../../../../../core/utils/sizes.dart';

class CouponRiderScreen extends StatefulWidget {
  const CouponRiderScreen({Key? key}) : super(key: key);

  @override
  State<CouponRiderScreen> createState() => _RequestsState();
}

class _RequestsState extends State<CouponRiderScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: ColorManager.backGround,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                appBarContent(title: "My Coupon", context: context),
                spaceHeight(20.h),
                container(
                    price: '15% Offer',
                    title: 'The Next\n  Parking',
                    date: 'Use by 25\n  Apr 2024'),
                SizedBox(height: screenHeight * 0.01), container(
                    price: '15% Offer',
                    title: 'The Next\n  Parking',
                    date: 'Use by 25\n  Apr 2024'),
                SizedBox(height: screenHeight * 0.01), container(
                    price: '15% Offer',
                    title: 'The Next\n  Parking',
                    date: 'Use by 25\n  Apr 2024'),
                SizedBox(height: screenHeight * 0.01), container(
                    price: '15% Offer',
                    title: 'The Next\n  Parking',
                    date: 'Use by 25\n  Apr 2024'),
                SizedBox(height: screenHeight * 0.01),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget container(
    {required String price, required String title, required String date}) {
  return Stack(
    children: [
      Image.asset("assets/images/Rectangle 1348.png", width: 320.w),
      Positioned(
        top: 0.0,
        left: (170),
        child: Image.asset("assets/images/Vector 17.png"),
      ),
      Positioned(
        top: 0.0,
        left: (320) / 2,
        child: Image.asset("assets/images/Ellipse 81.png"),
      ),
      Positioned(
        bottom: 0.0,
        left: (320) / 2,
        child: Image.asset("assets/images/Ellipse 81.png"),
      ),
      Positioned(
        top: 30.0,
        left: (20) / 2,
        child: Image.asset("assets/images/Mask group.png"),
      ),
      Positioned(
        top: 40.0,
        right: 30,
        child: Column(children: [
          Text(price,style: StyleManger.white20w600(),),
          spaceHeight(10),
          Text(title,style: StyleManger.white16w400(),),
          spaceHeight(10),
          Text(date,style: StyleManger.white16w400(),)
        ]),
      ),
    ],
  );
}
