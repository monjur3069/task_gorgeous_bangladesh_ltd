import 'package:get/get.dart';
import 'bottom_bar_screen_controller.dart';

class BottomBarBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => BottomBarController());
  }
}