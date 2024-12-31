// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:uber_clone/core/styles/colors.dart';
// import 'package:uber_clone/core/styles/text_style.dart';
// import 'package:uber_clone/core/utils/sizes.dart';
// import 'package:uber_clone/features/riders/presentation/authentications/pages/veirfy_code.dart';
//
// import '../../../../../core/presentation/shared_widgets/app_navigation_container.dart';
// import '../../../../../core/presentation/shared_widgets/auth_background_image.dart';
// import '../../../../../core/presentation/shared_widgets/custom_textfield.dart';
// import '../../profile/pages/profile_screen.dart';
// import '../bloc/auth_bloc.dart';
//
// class LogInScreen extends StatefulWidget {
//   const LogInScreen({super.key});
//
//   @override
//   State<LogInScreen> createState() => _LogInScreenState();
// }
//
// class _LogInScreenState extends State<LogInScreen> {
//   TextEditingController _emailController = TextEditingController();
//   TextEditingController _passwordController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: ColorManager.backGround,
//       body: Center(
//         child: Padding(
//           padding:
//               EdgeInsets.only(top: 80.h), // استخدام h لتحديد المسافة العلوية
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 CircleAvatar(
//                   radius: 60.r, // استخدام r لتحديد نصف القطر بناءً على حجم الشاشة
//                   backgroundImage: AssetImage("assets/images/logo.jpeg"),
//                 ),
//                 SizedBox(height: 15.h),
//                 Text(
//                   "Welcome Back",
//                   style: StyleManger.navyBlue26w600(),
//                 ),
//                 SizedBox(height: 3.h),
//                 Text(
//                   "Login to your account",
//                   style: StyleManger.greyText14w500(),
//                 ),
//                 SizedBox(height: 25.h),
//                 // إضافة البادينج بشكل كامل
//                 Padding(
//                   padding: EdgeInsets.symmetric(
//                       horizontal: 20.w,
//                       vertical: 20.h), // تعديل البادينج باستخدام w و h
//                   child: Column(
//                     children: [
//                       formField(
//                         controller: _emailController,
//                         titleField: 'Phone Number',
//                         icon: Icons.phone,
//                         enumData: fieldType.phoneNumber,
//                         reload: (void Function()) {},
//                       ),
//                       SizedBox(height: 15.h),
//                       formField(
//                         controller: _passwordController,
//                         titleField: 'Password',
//                         icon: Icons.lock,
//                         enumData: fieldType.password,
//                         reload: (void Function()) {},
//                       ),
//                       spaceHeight(3.h),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           TextButton(
//                             onPressed: () {
//                               Navigator.push(context, MaterialPageRoute(builder: (context) =>
//                               ResetPasswordPage(email: _emailController.text,),));
//                             },
//                             child: Text(
//                               "Forget Password?",
//                               style: StyleManger.navyBlue12w500(),
//                             ),
//                           ),
//                         ],
//                       ),
//         spaceHeight(20.h),
//         containerNavigator (title: ' Sign up', ontap: () {
//           final email = _emailController.text.trim();
//           final password = _passwordController.text.trim();
//           if (email.isNotEmpty && password.isNotEmpty) {
//             context.read<AuthBloc>().add(AuthEventLogin(email: email, password: password));
//           }
//           Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen(),));
//         }),
//         spaceHeight(15.h),
//
//         Row(mainAxisAlignment: MainAxisAlignment.center,
//              children: [
//               Text("Don't have Account ?",style: StyleManger.greyText14w500()),
//                TextButton(
//                  onPressed: () {},
//                  child: Text(
//                    "Sign Up ",
//                    style: StyleManger.lightGreen15w500(),
//                  ),
//                ),
//             ],
//         ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uber_clone/core/styles/text_style.dart';
import 'package:uber_clone/features/riders/presentation/authentications/pages/reset_password_screen.dart';

import '../../../../../app/routes/routes_name.dart';
import '../../../../../core/presentation/shared_widgets/app_navigation_container.dart';
import '../../../../../core/presentation/shared_widgets/custom_auth_images.dart';
import '../../../../../core/presentation/shared_widgets/custom_textfield.dart';
import '../../../../../core/styles/colors.dart';

class LogInRiderScreen extends StatefulWidget {
  const LogInRiderScreen({Key? key}) : super(key: key);

  @override
  State<LogInRiderScreen> createState() => _LogInRiderScreenState();
}

class _LogInRiderScreenState extends State<LogInRiderScreen> {
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: ColorManager.backGround,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 40),
          child: Column(
            children: [
              customStackWidget(title: 'Welcome Back'),
              SizedBox(height: screenHeight * 0.008),
              Text(
                "Login to your account",
                style: StyleManger.greyText14w500(),
              ),
              SizedBox(height: screenHeight * 0.025),
              customContainer(
                titleField: 'Phone Number',
                icon: Icons.smartphone_sharp,
                enumData: fieldType.phoneNumber,
                reload: (void Function()) {},
                controller: _phoneController,
              ),
              SizedBox(height: screenHeight * 0.03),
              customContainer(
                titleField: 'Password',
                icon: Icons.lock,
                enumData: fieldType.password,
                reload: setState,
                controller: _passwordController,
              ),
              SizedBox(height: screenHeight * 0.001),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 20.w),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResetRisderPassword(),
                        ),
                      );
                    },
                    child: Text("Forget Password?",
                        style: StyleManger.navyBlue12w500()),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.06),
              containerNavigator(
                title: 'Sign In',
                ontap: () {
                  Navigator.pushNamed(context, Routes.mainHomeRiderScreen);
                },
              ),
              SizedBox(height: screenHeight * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?",
                      style: StyleManger.greyText14w500()),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.registerRiderScreen);
                    },
                    child:
                        Text("Sign Up", style: StyleManger.lightGreen15w500()),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
