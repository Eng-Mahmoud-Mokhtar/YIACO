import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uber_clone/core/presentation/shared_widgets/common_appBar.dart';
import 'package:uber_clone/core/styles/text_style.dart';

import '../../../../../core/presentation/shared_widgets/app_navigation_container.dart';
import '../../../../../core/presentation/shared_widgets/custom_textfield.dart';
import '../../../../../core/styles/colors.dart';
import '../../../../../core/utils/sizes.dart';

class PersonalInformationRiderScreen extends StatefulWidget {
  const PersonalInformationRiderScreen({Key? key}) : super(key: key);

  @override
  State<PersonalInformationRiderScreen> createState() =>
      _PersonalInformationRiderScreenState();
}

class _PersonalInformationRiderScreenState extends State<PersonalInformationRiderScreen> {
  TextEditingController _cardNumberController = TextEditingController();
  TextEditingController _fullNameController = TextEditingController();
  TextEditingController _drivingLicenseController = TextEditingController();
  TextEditingController _codeController = TextEditingController();
  TextEditingController _areaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backGround,
      appBar: appBarContent(title: "Personal Info", context: context),
      body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                spaceWidth(15.h),
                Text("Personal Info", style: StyleManger.navyBlue20w600()),
                spaceHeight(20),
                Center(
                  child: const CircleAvatar(
                    backgroundColor: ColorManager.backGround,
                    radius: 30.0,
                    backgroundImage: AssetImage('assets/images/yaico.png'),
                  ),
                ),
                spaceHeight(20),
                _buildTextField("Full name", _areaController),
                _buildTextField("Card number", _cardNumberController),
                _buildTextField("Code", _codeController),
                _buildTextField("Driving License", _drivingLicenseController),
                _buildTextField("Full name", _fullNameController),
                spaceHeight(40.h),
                containerNavigator(title: "Update", ontap: () {}),
              ],
            ),
          )),
    );
  }

  Widget _buildTextField(String label, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: StyleManger.navyBlue15w500()),
        spaceHeight(10.h),
        customContainer(
          titleField: label,
          icon: Icons.person_outline_sharp,
          enumData: fieldType.fullName, // Adjust as needed
          reload: setState,
          controller: controller,
        ),
        spaceHeight(10.h),
      ],
    );
  }
}
