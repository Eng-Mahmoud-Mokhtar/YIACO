import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uber_clone/core/styles/text_style.dart';

import '../../../../../app/routes/routes_name.dart';
import '../../../../../core/presentation/shared_widgets/app_navigation_container.dart';
import '../../../../../core/presentation/shared_widgets/custom_auth_images.dart';
import '../../../../../core/presentation/shared_widgets/custom_textfield.dart';
import '../../../../../core/styles/colors.dart';

class RegisterRiderScreen extends StatefulWidget {
  const RegisterRiderScreen({Key? key}) : super(key: key);

  @override
  State<RegisterRiderScreen> createState() => _RegisterRiderScreenState();
}

class _RegisterRiderScreenState extends State<RegisterRiderScreen> {
  TextEditingController _fullNameController = TextEditingController();
  TextEditingController _typeController = TextEditingController();
  TextEditingController _cardNumberController = TextEditingController();
  TextEditingController _carBrandController = TextEditingController();
  TextEditingController _drivingLicenseController = TextEditingController();
  TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: ColorManager.backGround,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 40),
          child: Column(children: [
            customStackWidget(title: 'Register'),
            SizedBox(height: screenHeight * 0.006),
            Text("create your new account",
                style: StyleManger.greyText14w500()),
            SizedBox(height: screenHeight * 0.025),
            customContainer(
                titleField: "Enter Your full name",
                icon: Icons.person_outline_sharp,
                enumData: fieldType.fullName,
                reload: setState,
                controller: _fullNameController),
            SizedBox(height: screenHeight * 0.025),
            customContainer(
                titleField: "type",
                icon: Icons.person,
                enumData: fieldType.type,
                reload: setState,
                controller: _typeController),
            SizedBox(height: screenHeight * 0.025),
            customContainer(
                titleField: "Car Number",
                icon: Icons.car_crash,
                enumData: fieldType.cardNumber,
                reload: setState,
                controller: _cardNumberController),
            SizedBox(height: screenHeight * 0.025),
            customContainer(
                titleField: "Car Brand",
                icon: Icons.branding_watermark_outlined,
                enumData: fieldType.brandCar,
                reload: setState,
                controller: _carBrandController),
            SizedBox(height: screenHeight * 0.025),
            customContainer(
                titleField: "Driving License",
                icon: Icons.book,
                enumData: fieldType.drivingLicense,
                reload: setState,
                controller: _drivingLicenseController),
            SizedBox(height: screenHeight * 0.025),
            customContainer(
                titleField: "Phone Number",
                icon: Icons.phone,
                enumData: fieldType.phoneNumber,
                reload: setState,
                controller: _phoneNumberController),
            SizedBox(height: screenHeight * 0.025),
            customContainer(
                titleField: "Password",
                icon: Icons.lock,
                enumData: fieldType.password,
                reload: setState,
                controller: _passwordController),
            SizedBox(height: screenHeight * 0.035),
            containerNavigator(
              title: 'Sign Up',
              ontap: () {
                Navigator.pushNamed(context, Routes.loginRiderScreen);
              },
            ),
            SizedBox(height: screenHeight * 0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?",
                    style: StyleManger.greyText14w500()),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.loginRiderScreen);
                  },
                  child: Text("Sign In", style: StyleManger.lightGreen15w500()),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
