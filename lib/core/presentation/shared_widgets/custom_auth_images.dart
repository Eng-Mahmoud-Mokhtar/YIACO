import 'package:flutter/cupertino.dart';

import '../../styles/colors.dart';

Widget customStackWidget({required String title}) {
  return Stack(
    children: [
      Image.asset(
        "assets/images/download 2.png",
        width: double.infinity,
        fit: BoxFit.fitWidth,
      ),
      Positioned(
        top: 85,
        left: 0,
        right: 0,
        child: Image.asset(
          "assets/images/Rectangle 8.png",
          fit: BoxFit.fitWidth,
        ),
      ),
      Positioned(
        top: 175,
        left: 0,
        right: 0,
        child: Image.asset(
          "assets/images/Rectangle 9.png",
          fit: BoxFit.fitWidth,
        ),
      ),
      Positioned(
        top: 245,
        left: 0,
        right: 0,
        child: Stack(
          children: [
            Image.asset(
              "assets/images/Rectangle 49.png",
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
            Positioned(
              top: 110,
              left: 95, // Adjust based on where you want the text to appear on the image
              child: Text(
                title,
                style: TextStyle(
                  color: ColorManager.navyBlue, // Change color based on your background image
                  fontSize: 26, // You might need to replace 26.sp with 26 if you're not using a package that supports sp
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
