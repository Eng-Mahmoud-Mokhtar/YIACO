import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uber_clone/core/styles/text_style.dart';

import '../../styles/colors.dart';

Widget containerNavigator({
  required String title,
  required void Function() ontap,
}) {
  return InkWell(
    onTap: ontap,
    child: Container(
      child: Center(
        child:
          Text(title, style: StyleManger.white18w500()),
        ),

      width: double.infinity,
      height: 40.h,
      margin: EdgeInsets.only(left: 20.w, right: 20.w),
      decoration: BoxDecoration(
        color: ColorManager.navyBlue,
        borderRadius: BorderRadius.circular(50.r),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.25),
            offset: Offset(0, 0),
            blurRadius: 2,
            spreadRadius: 0,
          ),
        ],
      ),
    ),
  );
}
