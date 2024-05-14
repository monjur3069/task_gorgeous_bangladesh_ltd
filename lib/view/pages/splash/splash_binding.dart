import 'package:get/get.dart';
import 'package:task_gorgeous_bangladesh_ltd/view/pages/splash/splash_controller.dart';

class SplashBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }

}