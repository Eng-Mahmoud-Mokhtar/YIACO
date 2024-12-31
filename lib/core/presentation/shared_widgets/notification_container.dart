import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../styles/colors.dart';
import '../../utils/sizes.dart';

Widget notificationContainer({required String title ,required String time ,required String description}){
  int selectedContainerIndex = -1; // No container is selected initially

  return Container(
    width: double.infinity,
    height: 120.h,
    decoration: BoxDecoration(
      color: selectedContainerIndex == 1
          ? ColorManager.navyBlue
          : ColorManager.backGround,
      borderRadius: BorderRadius.circular(20.r),
      border: Border.all(
        color: Color.fromRGBO(255, 255, 255, 1),
        width: 3.w,
      ),
      boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.07),
          offset: Offset(0, 0),
          blurRadius: 25.r,
          spreadRadius: 0,
        ),
      ],
    ),
    child: Center(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: selectedContainerIndex == 1
                        ? ColorManager.backGround
                        : ColorManager.navyBlue,
                  ),
                ),
                Text(
                  time,
                  style: TextStyle(
                    fontSize: 8.sp,
                    fontWeight: FontWeight.w300,
                    color: selectedContainerIndex == 1
                        ? ColorManager.greyText
                        : ColorManager.greyText,
                  ),
                ),
              ],
            ),
            spaceHeight(10),
            Text(
              description,
              style: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.w400,
                color: selectedContainerIndex ==1
                    ? ColorManager.backGround
                    : ColorManager.navyBlue,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
