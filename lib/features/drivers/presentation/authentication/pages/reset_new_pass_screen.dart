import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/presentation/shared_widgets/app_navigation_container.dart';
import '../../../../../core/presentation/shared_widgets/common_appBar.dart';
import '../../../../../core/presentation/shared_widgets/custom_textfield.dart';

 import '../../../../riders/presentation/authentications/pages/otp_screen.dart';
import 'otp_screen.dart';

class ResetDriverPassword extends StatefulWidget {
  @override
  _ResetDriverPasswordState createState() => _ResetDriverPasswordState();
}

class _ResetDriverPasswordState extends State<ResetDriverPassword> {
  TextEditingController _phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(375, 812), minTextAdapt: true, splitScreenMode: true);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarContent(title: "Reset Password", context: context),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.0.w, vertical: 40),
        child: SingleChildScrollView(
            child: Column(
              children: [
              Text(
              'We will send you a one-time password \n to restore access to your profile',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 17.sp,
                  color: Color.fromRGBO(18, 19, 50, 1)),
            ),
            SizedBox(height: 80.h),
            customContainer(
                titleField: 'Phone Number',
                icon: Icons.smartphone_sharp,
                enumData: fieldType.phoneNumber,
                reload: (void Function()) {},
            controller: _phoneNumberController),
        SizedBox(height: 110.h),
        containerNavigator(
            title: 'Sent OTP',
            ontap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OtpCodeDriverScreen(),
                  ));
            }),
        ],
      ),
    ),
    ),
    );
  }
}
