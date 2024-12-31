import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uber_clone/core/presentation/shared_widgets/custom_row.dart';
import 'package:uber_clone/core/styles/text_style.dart';
import 'package:uber_clone/features/riders/presentation/profile/pages/cupoun_screen.dart';
import 'package:uber_clone/features/riders/presentation/profile/pages/help_screen.dart';
import 'package:uber_clone/features/riders/presentation/profile/pages/notifiaction_screen.dart';
import 'package:uber_clone/features/riders/presentation/profile/pages/payment_screen.dart';
import 'package:uber_clone/features/riders/presentation/profile/pages/personalinformation_screen.dart';

import '../../../../../../app/routes/routes_name.dart';
import '../../../../../../core/styles/colors.dart';

class ProfileDriverScreen extends StatefulWidget {
  const ProfileDriverScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ProfileDriverScreen> createState() => _ProfileDriverScreenState();
}

class _ProfileDriverScreenState extends State<ProfileDriverScreen> {
  int _selectedRowIndex = -1;

  void _onRowTapped(int index) {
    setState(() {
      _selectedRowIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backGround,
      body: Padding(
        padding: EdgeInsets.only(bottom: 20.h),
        child: Container(
          padding: EdgeInsets.only(top: 35.h),
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50.r),
              bottomRight: Radius.circular(50.r),
            ),
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.25),
                offset: Offset(0, 0),
                blurRadius: 4,
                spreadRadius: 0,
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.all(20.w),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Profile", style: StyleManger.navyBlue20w600()),
                          Text("Mohamed Hamed",
                              style: StyleManger.lightGreen15w500()),
                        ],
                      ),
                      const CircleAvatar(
                        backgroundColor: ColorManager.backGround,
                        radius: 30.0,
                        backgroundImage: AssetImage('assets/images/yaico.png'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 0.06.sh,
                  ),
                  CustomRowWidget(
                      isSelected: _selectedRowIndex == 0,
                      title: "Personal Info",
                      context: context,
                      iconData: Icons.person,
                      ontap: () {
                        _onRowTapped(0);
                        Navigator.pushNamed(
                            context, Routes.personalInformationRiderScreen);
                      }),
                  SizedBox(
                    height: 0.04.sh,
                  ),
                  CustomRowWidget(
                      isSelected: _selectedRowIndex == 1,
                      title: "Change Password",
                      context: context,
                      iconData: Icons.edit_calendar,
                      ontap: () {
                        _onRowTapped(1);
                        Navigator.pushNamed(
                            context, Routes.changePasswordRiderScreen);
                      }),
                  SizedBox(
                    height: 0.04.sh,
                  ),
                  CustomRowWidget(
                      isSelected: _selectedRowIndex == 3,
                      title: "Notifications",
                      context: context,
                      iconData: Icons.notifications,
                      ontap: () {
                        _onRowTapped(3);
                        Navigator.pushNamed(
                            context, Routes.notificationRiderScreen);
                      }),
                  SizedBox(
                    height: 0.04.sh,
                  ),
                  CustomRowWidget(
                      isSelected: _selectedRowIndex == 6,
                      title: "Arabic",
                      context: context,
                      iconData: Icons.repeat,
                      ontap: () {
                        _onRowTapped(6);
                      }),
                  SizedBox(
                    height: 0.04.sh,
                  ),
                  CustomRowWidget(
                      isSelected: _selectedRowIndex == 7,
                      title: "Sign out",
                      context: context,
                      iconData: Icons.logout,
                      ontap: () {
                        _onRowTapped(7);
                      }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onLanguageChange(Locale locale) {}
}
