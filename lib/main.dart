
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'app/routes/generate_route.dart';
import 'app/routes/routes_name.dart';
import 'features/drivers/presentation/record/page/record_screen.dart';


void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690), // Design size
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(

          debugShowCheckedModeBanner: false,
          initialRoute: Routes.splachScreen,
         onGenerateRoute: AppRouter.onGenerateRoute,
        );
      },
    );
  }
}
