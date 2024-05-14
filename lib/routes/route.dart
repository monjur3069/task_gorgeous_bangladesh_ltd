import 'package:get/get.dart';
import 'package:task_gorgeous_bangladesh_ltd/routes/routes_name.dart';
import 'package:task_gorgeous_bangladesh_ltd/view/pages/bottom_bar_screen/bottom_bar_screen_binding.dart';
import 'package:task_gorgeous_bangladesh_ltd/view/pages/bottom_bar_screen/bottom_bar_screen_view.dart';
import 'package:task_gorgeous_bangladesh_ltd/view/pages/sign_in/sign_in_binding.dart';
import 'package:task_gorgeous_bangladesh_ltd/view/pages/sign_in/sign_in_screen.dart';
import 'package:task_gorgeous_bangladesh_ltd/view/pages/sign_up/sign_up_binding.dart';
import 'package:task_gorgeous_bangladesh_ltd/view/pages/sign_up/sign_up_screen.dart';
import 'package:task_gorgeous_bangladesh_ltd/view/pages/splash/splash_binding.dart';
import 'package:task_gorgeous_bangladesh_ltd/view/pages/splash/splash_screen.dart';

class AppRoute {
  static final pages = [
    GetPage(
      name: Routes.splashRoute,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.signInRoute,
      page: () => const SignInScreen(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: Routes.signUpRoute,
      page: () => const SignUpScreen(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: Routes.bottomBarRoute,
      page: () => const BottomBarScreen(),
      binding: BottomBarBinding(),
    ),


  ];
}
