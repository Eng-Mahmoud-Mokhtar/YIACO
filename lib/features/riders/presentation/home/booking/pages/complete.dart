import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/presentation/shared_widgets/status_container.dart';
import '../../../../../../core/styles/colors.dart';
import '../../../../../../core/utils/sizes.dart';

class CompletedScreen extends StatefulWidget {
  const CompletedScreen({Key? key}) : super(key: key);

  @override
  State<CompletedScreen> createState() => _CompletedScreenState();
}

class _CompletedScreenState extends State<CompletedScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Completed Screen'),
        backgroundColor: ColorManager.backGround,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6.0),
        child: ListView.separated(
          itemBuilder: (context, index) {
            return statusContainer(
              title: 'City Star Parking',
              streetTitle: 'Al Thahraa st.',
              timer: '3 Hours',
              numberOfCar: '40',
              buttomTitle: 'Complete', ontap: () {  },
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
