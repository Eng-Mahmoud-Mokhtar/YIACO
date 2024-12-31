import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uber_clone/core/styles/text_style.dart';

import '../../../../../core/presentation/shared_widgets/app_navigation_container.dart';
import '../../../../../core/presentation/shared_widgets/common_appBar.dart';
import '../../../../../core/presentation/shared_widgets/custom_textfield.dart';

class CreateNewPasswordDriver extends StatefulWidget {
  @override
  _CreateNewPasswordDriverState createState() => _CreateNewPasswordDriverState();
}

class _CreateNewPasswordDriverState extends State<CreateNewPasswordDriver> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _passwordController = TextEditingController();
    TextEditingController _confirmPasswordController = TextEditingController();

    ScreenUtil.init(context,
        designSize: Size(375, 812), minTextAdapt: true, splitScreenMode: true);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarContent(
        title: 'Create New Password',
        context: context,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.0.w, vertical: 40),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text('Please update password to secure your \n account in future',
                  textAlign: TextAlign.center,
                  style: StyleManger.navyBlue15w500()),
              SizedBox(height: 30.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child:
                  Text("New Password", style: StyleManger.navyBlue15w500()),
                ),
              ),
              SizedBox(height: 8.h),
              customContainer(
                  titleField: "Password",
                  icon: Icons.lock,
                  enumData: fieldType.password,
                  reload: setState,
                  controller: _passwordController),
              SizedBox(height: 20.h),
              customContainer(
                  titleField: "Password",
                  icon: Icons.lock,
                  enumData: fieldType.confirmPassword,
                  reload: setState,
                  controller: _confirmPasswordController),
              SizedBox(height: 90.h),
              containerNavigator(title: 'Continue', ontap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
