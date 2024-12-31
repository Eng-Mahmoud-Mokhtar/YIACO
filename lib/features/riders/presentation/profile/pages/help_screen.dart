import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uber_clone/core/presentation/shared_widgets/common_appBar.dart';
import 'package:uber_clone/core/styles/text_style.dart';

import '../../../../../core/presentation/shared_widgets/app_navigation_container.dart';
import '../../../../../core/presentation/shared_widgets/custom_textfield.dart';
import '../../../../../core/styles/colors.dart';
import '../../../../../core/utils/sizes.dart';

class HelpRiderScreen extends StatefulWidget {
  const HelpRiderScreen({Key? key}) : super(key: key);

  @override
  State<HelpRiderScreen> createState() => _HelpRiderScreenState();
}

class _HelpRiderScreenState extends State<HelpRiderScreen> {
  TextEditingController _operationNumberController = TextEditingController();
  TextEditingController _problemDescriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarContent(title: "help", context: context),
      backgroundColor: ColorManager.backGround,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 15), // توحيد الحشو العام
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // محاذاة النصوص والعناصر إلى اليسار
            children: [

              spaceHeight(10.h),
              Padding(
                padding: EdgeInsets.only(left: 15), // توحيد الحشو للنصوص
                child: Text("Full name"),
              ),
              spaceHeight(5),
              customContainer(
                titleField: "Full name",
                icon: Icons.lock,
                enumData: fieldType.fullName,
                reload: setState,
                controller: _operationNumberController,
              ),
              spaceHeight(10.h),
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text("Operation number"),
              ),
              spaceHeight(5),
              customContainer(
                titleField: "Operation number",
                icon: Icons.lock,
                enumData: fieldType.phoneNumber,
                reload: setState,
                controller: _problemDescriptionController,
              ),
              spaceHeight(10.h),
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text("Problem Description"),
              ),
              spaceHeight(5),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15), // توحيد المسافات الجانبية
                width: double.infinity,
                height: 140.h,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(248, 254, 253, 1),
                  borderRadius: BorderRadius.circular(20.r),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      offset: Offset(0, 0),
                      blurRadius: 1,
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter text here',
                      contentPadding: EdgeInsets.symmetric(vertical: 20.h),
                    ),
                  ),
                ),
              ),
            Spacer(),
              containerNavigator(title: "Send", ontap: () {}),
              spaceHeight(30.h),
            ],
          ),
        ),
      ),
    );
  }
}
