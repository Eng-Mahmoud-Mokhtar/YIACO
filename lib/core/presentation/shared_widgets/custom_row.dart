
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../styles/colors.dart';
import '../../utils/sizes.dart';

Widget CustomRowWidget({required bool isSelected,
  required String title,
  required BuildContext context,
  required IconData iconData,
  required void Function()   ontap,
}) {
  final screenHeight = MediaQuery.of(context).size.height;
  final screenWidth = MediaQuery.of(context).size.width;
  return InkWell(
    onTap: ontap,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  iconData,
                  size: 24.sp,
                  color: isSelected ?ColorManager.lightGreen : ColorManager.navyBlue,                ),
                spaceWidth(20),
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                    color: isSelected ?ColorManager.lightGreen : ColorManager.navyBlue,             ),
                ),
              ],
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 20.sp,
              color: ColorManager.navyBlue,
            ),
          ],
        ),
        SizedBox(
          height: screenHeight * 0.0325,
        ),
        Divider(
          color: Color.fromRGBO(241, 241, 241, 0.95),
          thickness: 2,
        ),
      ],
    ),
  );
}