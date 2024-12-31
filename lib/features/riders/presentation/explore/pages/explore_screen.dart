import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uber_clone/core/presentation/shared_widgets/common_appBar.dart';

import '../../../../../../core/presentation/shared_widgets/status_container.dart';
import '../../../../../../core/styles/colors.dart';
import '../../../../../../core/utils/sizes.dart';
import '../../widget/bottom_sheet.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: appBarContent(title: "Explore", context: context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6.0),
        child: ListView.separated(
          itemBuilder: (context, index) {
            return statusContainer(
              title: 'City Star Parking',
              streetTitle: 'Al Thahraa st.',
              timer: '3 Hours',
              numberOfCar: '40',
              buttomTitle: 'Complete', ontap: () { showParkingDetails(context); },
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(height: screenHeight * 0.01);
          },
          itemCount: 5,
          physics: const BouncingScrollPhysics(), // لتحسين تجربة التمرير
        ),
      ),
    );
  }
}
