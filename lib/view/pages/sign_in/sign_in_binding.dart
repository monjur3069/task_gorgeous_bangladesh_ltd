import 'package:get/get.dart';
import 'package:task_gorgeous_bangladesh_ltd/view/pages/sign_in/sign_in_controller.dart';

class SignInBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => SignInController());
  }

}