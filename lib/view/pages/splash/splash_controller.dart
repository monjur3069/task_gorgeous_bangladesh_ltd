import 'package:get/get.dart';
import 'package:task_gorgeous_bangladesh_ltd/routes/routes_name.dart';

class SplashController extends GetxController{
  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 2),() => Get.offNamed(Routes.signInRoute));
    super.onInit();
  }
}