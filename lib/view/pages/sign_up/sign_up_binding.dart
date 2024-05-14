import 'package:get/get.dart';
import 'package:task_gorgeous_bangladesh_ltd/view/pages/sign_up/sign_up_controller.dart';

class SignUpBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpController());
  }

}