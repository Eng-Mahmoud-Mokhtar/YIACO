import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uber_clone/core/presentation/shared_widgets/common_appBar.dart';

import '../../../../../core/presentation/shared_widgets/app_navigation_container.dart';
import '../../../../../core/presentation/shared_widgets/custom_textfield.dart';
import '../../../../../core/styles/colors.dart';
import '../../../../../core/styles/text_style.dart';
import '../../../../../core/utils/sizes.dart';



class ChangePasswordRiderScreen extends StatefulWidget {
  const ChangePasswordRiderScreen({Key? key}) : super(key: key);

  @override
  State<ChangePasswordRiderScreen> createState() => _ChangePasswordRiderScreenState();
}

class _ChangePasswordRiderScreenState extends State<ChangePasswordRiderScreen> {
  TextEditingController _changePasswordController = TextEditingController();
  TextEditingController _newPasswordController = TextEditingController();
  TextEditingController _oldPasswordController = TextEditingController();
   @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:           appBarContent(title: "Change password", context: context),

      backgroundColor: ColorManager.backGround,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             spaceHeight(30.h),
            customContainer(
              titleField: "Old Password",
              icon: Icons.lock,
              enumData: fieldType.oldPassword,
              reload: setState, controller: _oldPasswordController,
            ),
            spaceHeight(30.h),
            customContainer(
              titleField: "New Password",
              icon: Icons.lock,
              enumData: fieldType.newPassword,
              reload: setState, controller: _newPasswordController,
            ),
            spaceHeight(30.h),
            customContainer(
              titleField: "Confirm New Password",
              icon: Icons.lock,
              enumData: fieldType.confirmPassword,
              reload: setState, controller: _changePasswordController,
            ),
            Spacer(),
            containerNavigator(title: "Change Password", ontap: () {  }),
            spaceHeight(30.h),
          ],
        ),
      ),
    );
  }
}
