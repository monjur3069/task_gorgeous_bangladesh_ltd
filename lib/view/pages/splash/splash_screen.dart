import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task_gorgeous_bangladesh_ltd/constants.dart';
import 'package:task_gorgeous_bangladesh_ltd/view/pages/splash/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<SplashController>();
    return Scaffold(
      backgroundColor: const Color(0xff891C20),
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(height: 190.h,),
              Center(child: Image.asset('images/splash_img_1.png',fit: BoxFit.cover,width: 202.w,height: 220.h,)),
            ],
          ),
          Column(
            children: [
              SizedBox(height: 290.h,),
              Center(child: Image.asset('images/splash_img_2.png',fit: BoxFit.cover,width: 68.w,height: 74.h,)),
            ],
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Payments All',style: TextStyle(color: primaryColorWhite,fontWeight: FontWeight.w600,fontSize: 25.sp,fontStyle: FontStyle.italic),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
