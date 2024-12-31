import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../styles/text_style.dart';
import '../../utils/sizes.dart';

Widget statusContainer({
  required VoidCallback ontap,

  required String title,required String streetTitle,required String timer,required String numberOfCar,required String buttomTitle}) {
  return Container(
      width: double.infinity,
      height: 150.h,
      margin: EdgeInsets.only(top: 30.h),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(255, 255, 255, 1),
        borderRadius: BorderRadius.circular(30.r),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.25),
            offset: Offset(0, 0),
            blurRadius: 2,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Center(
          child: Padding(
              padding: EdgeInsets.all(10.w),
              child: Row(children: [
                Expanded(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      Text(title,
                          style: StyleManger.navyBlue15w500()),
                      Text(streetTitle),
                      Row(
                        children: [
                          Image.asset("assets/images/car-tunnel 3.png",
                              width: 20.w, height: 20.h),
                          spaceWidth(5.w),
                          Text(numberOfCar, style: StyleManger.navyBlue12w500()),
                          spaceWidth(15.w),
                          Image.asset("assets/images/clock-1 2.png",
                              width: 20.w, height: 20.h),
                          spaceWidth(5.w),
                          Text(timer, style: StyleManger.navyBlue12w500()),
                        ],
                      ),
                      InkWell(onTap: ontap,
                        child: Container(
                          child: Center(
                            child: Text(buttomTitle,
                                style: StyleManger.lightGreen15w500()),
                          ),
                          width: 106.0,
                          height: 30.0,
                          margin: EdgeInsets.only(top: 15.0, left: 5),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(196, 255, 245, 0.25),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                    ])),
                spaceWidth(20),
                Container(
                  height: 116,
                  child: Image.asset("assets/images/street.png"),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  width: 96,
                )
              ]))));
}
