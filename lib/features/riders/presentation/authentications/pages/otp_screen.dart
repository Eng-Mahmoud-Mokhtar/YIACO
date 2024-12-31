import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../app/routes/routes_name.dart';
import '../../../../../core/presentation/shared_widgets/app_navigation_container.dart';
import '../../../../../core/presentation/shared_widgets/common_appBar.dart';
import '../../../../../core/styles/colors.dart';
import '../../../../../core/styles/text_style.dart';


class OtpCodeRiderScreen extends StatefulWidget {
  @override
  _OtpCodeRiderScreenState createState() => _OtpCodeRiderScreenState();
}

class _OtpCodeRiderScreenState extends State<OtpCodeRiderScreen> {
  final TextEditingController _firstController = TextEditingController();
  final TextEditingController _secondController = TextEditingController();
  final TextEditingController _thirdController = TextEditingController();
  final TextEditingController _fourthController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(375, 812), minTextAdapt: true, splitScreenMode: true);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarContent(title: "OTP", context: context),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 40),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'We will send you a one-time password to restore access to your profile',
                textAlign: TextAlign.center,
               style:StyleManger.navyBlue15w500(),
              ),
              SizedBox(height: 16.h),
              Text(
                '+01120484981',
                 style:StyleManger.navyBlue15w500()
              ),
              SizedBox(height: 60.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildCodeTextField(_firstController, _secondController),
                  SizedBox(width: 20.w),
                  _buildCodeTextField(_secondController, _thirdController),
                  SizedBox(width: 20.w),
                  _buildCodeTextField(_thirdController, _fourthController),
                  SizedBox(width: 20.w),
                  _buildCodeTextField(_fourthController, null),
                ],
              ),
              SizedBox(height: 40.h),
              RichText(
                text: TextSpan(
                  text: "Didn't get code?",
                  style: StyleManger.navyBlue15w400(),
                  children: [
                    WidgetSpan(
                      child: SizedBox(width: 5.w), // Adjust width as needed
                    ),
                    TextSpan(
                      text: ' Resend Code',
                      style: StyleManger.lightGreen15w500(),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {

                        },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 60.h),
              containerNavigator(title: 'Continue', ontap: () {
                Navigator.pushNamed(context, Routes.createNewPasswordRiderScreen);


              }),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCodeTextField(
      TextEditingController controller, TextEditingController? nextController) {
    return SizedBox(
      width: 50.w,
      height: 50.w,
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(248, 254, 253, 1),
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(
            color: Color.fromRGBO(73, 190, 170, 1),
            width: 1,
          ),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              offset: Offset(0, 0),
              blurRadius: 1,
              spreadRadius: 0,
            ),
          ],
        ),
        child: TextField(
          controller: controller,
          autofocus: true,
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          maxLength: 1,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: ColorManager.navyBlue, // Set the text color to red
          ),
          decoration: InputDecoration(
            counterText: '',
            border: InputBorder.none,
          ),
          onChanged: (value) {
            if (value.length == 1 && nextController != null) {
              FocusScope.of(context).nextFocus();
            } else if (value.isEmpty) {
              FocusScope.of(context).previousFocus();
            }
          },
        ),
      ),
    );
  }
}
