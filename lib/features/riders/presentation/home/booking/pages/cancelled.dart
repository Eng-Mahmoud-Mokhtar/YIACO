import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/presentation/shared_widgets/status_container.dart';
import '../../../../../../core/styles/colors.dart';

class CancelledScreen extends StatefulWidget {
  const CancelledScreen({Key? key}) : super(key: key);

  @override
  State<CancelledScreen> createState() => _CancelledScreenState();
}

class _CancelledScreenState extends State<CancelledScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cancelled Screen'),
        backgroundColor:ColorManager.backGround, // لون الـ AppBar من ملف الألوان
      ),
      body: Padding(
        padding: const EdgeInsets. only(left: 20,right: 20),
        child: ListView.separated(
          itemBuilder: (context, index) {
            return statusContainer(
              title: 'City Star Parking',
              streetTitle: 'Al Thahraa st.',
              timer: '3 Hours',
              numberOfCar: '40',
              buttomTitle: 'Cancell', ontap: () {  },
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
