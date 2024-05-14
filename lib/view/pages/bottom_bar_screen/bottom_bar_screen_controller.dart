import 'package:get/get.dart';
import 'package:task_gorgeous_bangladesh_ltd/view/common_widgets/common_page.dart';
import 'package:task_gorgeous_bangladesh_ltd/view/pages/home/home_controller.dart';
import 'package:task_gorgeous_bangladesh_ltd/view/pages/home/home_screen.dart';

class BottomBarController extends GetxController {
  var currentIndex = 0.obs;
  var pageList = [
    const HomeScreen(),
    const CommonPage(pageName: 'Transaction'),
    const CommonPage(pageName: 'QR Code'),
    const CommonPage(pageName: 'People'),
    const CommonPage(pageName: 'Profile'),
  ].obs;

  @override
  void onInit() async{
    Get.lazyPut(() => HomeController());
    currentIndex.value = Get.arguments ?? 0;
    super.onInit();
  }
}
