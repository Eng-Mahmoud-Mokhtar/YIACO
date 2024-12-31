import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/styles/colors.dart';
import '../../../../core/styles/text_style.dart';

Widget containerStatusDriver(
    {required String statues,
      required String name,
      required String numberOfCars,
      required String timer,
      required String carName,
      required Color containerColor,
      required Color statuesColor}) {
  return Container(
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/images/Mask group(1).png'),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: StyleManger.navyBlue15w500()),
                SizedBox(height: 4),
                Row(
                  children: [
                    Icon(Icons.directions_car,
                        color: ColorManager.lightGreen, size: 16),
                    SizedBox(width: 5),
                    Text(
                      carName,
                      style: TextStyle(color: Colors.teal),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Icon(Icons.person, color: Colors.grey, size: 16),
                    SizedBox(width: 5),
                    Text(
                      numberOfCars,
                      style: StyleManger.navyBlue12w500(),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.access_time, color: Colors.grey, size: 16),
                    SizedBox(width: 5),
                    Text(
                      timer,
                      style: StyleManger.navyBlue12w500(),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: containerColor,
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              statues,
              style: TextStyle(color: statuesColor),
            ),
          ),
        ],
      ),
    ),
    width: double.infinity, // عرض الكونتينر
    height: 100.h, // ارتفاع الكونتينر
    decoration: BoxDecoration(
      border: Border.all(color: ColorManager.greyText),
      color: Colors.white, // لون الخلفية
      borderRadius: BorderRadius.circular(30),
    ),
  );
}