import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uber_clone/core/presentation/shared_widgets/common_appBar.dart';

import '../../../../../core/styles/colors.dart';
import '../../../../../core/utils/sizes.dart';


class PaymentRiderScreen extends StatefulWidget {
  const PaymentRiderScreen({Key? key}) : super(key: key);

  @override
  State<PaymentRiderScreen> createState() => _PaymentRiderScreenState();
}

class _PaymentRiderScreenState extends State<PaymentRiderScreen> {
  int _selectedPaymentMethod = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarContent(title:"Payment", context: context),
      backgroundColor: ColorManager.backGround,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              spaceHeight(30.h),
              Container(
                width: double.infinity, // عرض الحاوية
                height: 70.h, // ارتفاع الحاوية
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.06), // لون التظليل
                      offset: Offset(0, 0),
                      blurRadius: 25.r,
                      spreadRadius: 0,
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50.r),
                  border: Border.all(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    width: 3.w, // سمك الحدود
                  ),
                ),
                child: ListTile(
                  leading: Image.asset("assets/images/card-mastercard 1.png"),
                  title: Text('**** **** **** 363'),
                  trailing: Radio<int>(
                    activeColor: ColorManager.lightGreen,
                    value: 1,
                    groupValue: _selectedPaymentMethod,
                    onChanged: (int? value) {
                      setState(() {
                        _selectedPaymentMethod = value!;
                      });
                    },
                  ),
                ),
              ),
              spaceHeight(30.h),
              Container(
                width: double.infinity,
                height: 70.h,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.06),
                      offset: Offset(0, 0),
                      blurRadius: 25.r,
                      spreadRadius: 0,
                    ),
                  ],
                  color: Colors.white, // لون الخلفية
                  borderRadius: BorderRadius.circular(50.r),
                  border: Border.all(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    width: 3.w, // سمك الحدود
                  ),
                ),
                child: ListTile(
                  leading: Image.asset("assets/images/google 2.png"),
                  title: Text('Google Play'),
                  trailing: Radio<int>(
                    activeColor: ColorManager.lightGreen,
                    value: 2,
                    groupValue: _selectedPaymentMethod,
                    onChanged: (int? value) {
                      setState(() {
                        _selectedPaymentMethod = value!;
                      });
                    },
                  ),
                ),
              ),
              spaceHeight(30.h),
              Container(
                width: double.infinity,
                height: 70.h,
                padding: EdgeInsets.fromLTRB(94.w, 15.h, 94.w, 15.h),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(196, 255, 245, 0.25),
                  borderRadius: BorderRadius.circular(50.r),
                ),
                child: Center(
                  child: Row(
                    children: [
                      // يمكن وضع محتوياتك هنا

                      Image.asset("assets/images/add-circle 1.png"),
                      spaceWidth(15.w),
                      Text("Add New Card "),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
