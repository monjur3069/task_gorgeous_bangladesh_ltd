import 'package:get/get.dart';

class HomeController extends GetxController {
  RxBool isBallanceShown = false.obs;
  RxBool isBallance = true.obs;
  RxBool isAnimation = false.obs;

  void showBalance() async {
    isAnimation.value = true;
    isBallance.value = false;

    await Future.delayed(const Duration(milliseconds: 800),
        () => isBallanceShown.value = true);
    await Future.delayed(const Duration(milliseconds: 1500),
        () => isBallanceShown.value = false);
    await Future.delayed(const Duration(milliseconds: 200),
        () => isAnimation.value = false);
    await Future.delayed(
        const Duration(milliseconds: 800), () => isBallance.value = true);
  }
}
