import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uber_clone/core/styles/text_style.dart';

appBarContent({required String title,required BuildContext context }){
  return  AppBar(
    title: Text(title,
        style: StyleManger.navyBlue20w600()),
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.black,size: 20.sp),
        onPressed: (){
         Navigator.pop(context);
        }
    ),
  );
}