import 'package:flutter/material.dart';
import 'package:uber_clone/app/routes/routes_name.dart';
import 'package:uber_clone/features/drivers/presentation/authentication/pages/create_new_password_screen.dart';
import 'package:uber_clone/features/drivers/presentation/authentication/pages/login_screen.dart';
import 'package:uber_clone/features/drivers/presentation/authentication/pages/register_screen.dart';
import 'package:uber_clone/features/drivers/presentation/authentication/pages/reset_new_pass_screen.dart';
import 'package:uber_clone/features/drivers/presentation/home/pages/google_map.dart';
import 'package:uber_clone/features/drivers/presentation/home/pages/home.dart';
import 'package:uber_clone/features/drivers/presentation/profile/pages/notification_driver_screen.dart';
import 'package:uber_clone/features/drivers/presentation/profile/pages/personal_information_screen.dart';
import 'package:uber_clone/features/drivers/presentation/profile/pages/profile_driver_screen.dart';
import 'package:uber_clone/features/riders/presentation/authentications/pages/create_new_pass_screen.dart';
import 'package:uber_clone/features/riders/presentation/authentications/pages/login_rider_screen_.dart';
import 'package:uber_clone/features/riders/presentation/authentications/pages/register_page.dart';
import 'package:uber_clone/features/riders/presentation/authentications/pages/reset_password_screen.dart';
import 'package:uber_clone/features/riders/presentation/home/pages/googlemap_screen.dart';
import 'package:uber_clone/features/riders/presentation/home/pages/home_screen.dart';

import '../../features/drivers/presentation/profile/pages/change_pass_driver_screen.dart';
import '../../features/drivers/presentation/record/page/record_screen.dart';
import '../../features/onBoardring/splach_screen.dart';
import '../../features/onBoardring/user_type.dart';
import '../../features/riders/presentation/profile/pages/change_password.dart';
import '../../features/riders/presentation/profile/pages/cupoun_screen.dart';
import '../../features/riders/presentation/profile/pages/help_screen.dart';
import '../../features/riders/presentation/profile/pages/notifiaction_screen.dart';
import '../../features/riders/presentation/profile/pages/payment_screen.dart';
import '../../features/riders/presentation/profile/pages/personalinformation_screen.dart';
import '../../features/riders/presentation/profile/pages/profile_screen.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splachScreen:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case Routes.userTypeScreen:
        return MaterialPageRoute(builder: (_) => UserTypeScreen());

      case Routes.paymentRiderScreen:
        return MaterialPageRoute(builder: (_) => PaymentRiderScreen());
      case Routes.createNewPasswordRiderScreen:
        return MaterialPageRoute(builder: (_) => CreateNewPasswordRider());
      case Routes.mainHomeRiderScreen:
        return MaterialPageRoute(builder: (_) => MainHomeRiderScreen());
      case Routes.googleMapRiderScreen:
        return MaterialPageRoute(builder: (_) => GoogleMapRiderScreen());

      case Routes.loginRiderScreen:
        return MaterialPageRoute(builder: (_) => LogInRiderScreen());
      case Routes.registerRiderScreen:
        return MaterialPageRoute(builder: (_) => RegisterRiderScreen());

      case Routes.profileRiderScreen:
        return MaterialPageRoute(builder: (_) => ProfileRiderScreen());
      case Routes.helpRiderScreen:
        return MaterialPageRoute(builder: (_) => HelpRiderScreen());
      case Routes.resetPasswordRiderScreen:
        return MaterialPageRoute(builder: (_) => ResetRisderPassword());

      case Routes.personalInformationRiderScreen:
        return MaterialPageRoute(
            builder: (_) => PersonalInformationRiderScreen());
      case Routes.changePasswordRiderScreen:
        return MaterialPageRoute(builder: (_) => ChangePasswordRiderScreen());

      case Routes.notificationRiderScreen:
        return MaterialPageRoute(builder: (_) => NotificationRiderScreen());

      case Routes.couponRiderScreen:
        return MaterialPageRoute(builder: (_) => CouponRiderScreen());
      ///////////////////////////////////////////////////////////////
//Driver:

      case Routes.createNewPasswordDriverScreen:
        return MaterialPageRoute(builder: (_) => CreateNewPasswordDriver());
      case Routes.mainHomeDriverScreen:
        return MaterialPageRoute(builder: (_) => MainHomeDriverScreen());
      case Routes.googleMapDriverScreen:
        return MaterialPageRoute(builder: (_) => GoogleMapDriverScreen());

      case Routes.loginDriverScreen:
        return MaterialPageRoute(builder: (_) => LogInDriverScreen());
      case Routes.registerDriverScreen:
        return MaterialPageRoute(builder: (_) => RegisterDriverScreen());

      case Routes.profileDriverScreen:
        return MaterialPageRoute(builder: (_) => ProfileDriverScreen() );

      case Routes.resetPasswordDriverScreen:
        return MaterialPageRoute(builder: (_) => ResetDriverPassword());

      case Routes.personalInformationDriverScreen:
        return MaterialPageRoute(
            builder: (_) => PersonalInformationDriverScreen());
      case Routes.changePasswordDriverScreen:
        return MaterialPageRoute(builder: (_) => ChangePasswordDriverScreen());

      case Routes.notificationDriverScreen:
        return MaterialPageRoute(builder: (_) => NotificationDriverScreen());
        case Routes.recordScreen:
        return MaterialPageRoute(builder: (_) => RecordScreen());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: Text("حدث خطأ"),
              ),
              body: Center(child: Text("0000000")),
            ));
  }
}
