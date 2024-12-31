import 'package:flutter/material.dart';

import '../../app/routes/routes_name.dart';
import '../../core/presentation/shared_widgets/app_navigation_container.dart';
import '../../core/presentation/shared_widgets/custom_auth_images.dart';
import '../../core/styles/text_style.dart';
import '../riders/presentation/authentications/pages/login_rider_screen_.dart';
import '../riders/presentation/authentications/pages/login_rider_screen_.dart';

class UserTypeScreen extends StatelessWidget {
  const UserTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Column(children: [
                  customStackWidget(title: 'Hellow'),
                  SizedBox(height: screenHeight * 0.008),
                  Text(
                    "Act As....",
                    style: StyleManger.greyText14w500(),
                  ),
                  SizedBox(height: screenHeight * 0.025),

                  containerNavigator(title: 'Rider', ontap: () { Navigator.pushNamed(context, Routes.loginRiderScreen); }),
                  SizedBox(height: screenHeight * 0.025),
                  containerNavigator(title: 'Driver', ontap: () {


                    Navigator.pushNamed(context, Routes.loginDriverScreen);

                  }),



                ]))));
  }
}
