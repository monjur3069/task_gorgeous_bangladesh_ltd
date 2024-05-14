import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task_gorgeous_bangladesh_ltd/constants.dart';
import 'package:task_gorgeous_bangladesh_ltd/view/pages/bottom_bar_screen/bottom_bar_screen_controller.dart';

class BottomBarScreen extends StatelessWidget {
  const BottomBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<BottomBarController>();
    return PopScope(
      canPop: false, //It should be false to work
      onPopInvoked: (didPop) {
        if (didPop) {
          return;
        }
        Get.defaultDialog(
          title: 'Confirmation',
          titleStyle: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
          content: const Text('Are you sure  to exit?'),
          actions: [
            GestureDetector(
              onTap: () => Navigator.pop(context, false),
              child: Container(
                height: 30.h,
                width: 70.w,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(8.r)),
                child: const Center(
                    child: Text(
                  'Cancel',
                  style: TextStyle(color: primaryColorWhite),
                )),
              ),
            ),
            GestureDetector(
              onTap: () {
                SystemNavigator.pop();
              },
              child: Container(
                height: 30.h,
                width: 70.w,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(8.r)),
                child: const Center(
                    child: Text(
                  'Yes',
                  style: TextStyle(color: primaryColorWhite),
                )),
              ),
            ),
          ],
        ); //Here this temporary, you can change this line
      },
      child: Scaffold(
        body: Obx(() => controller.pageList[controller.currentIndex.value]),
        floatingActionButton: Visibility(
          visible: MediaQuery.of(context).viewInsets.bottom == 0.0,
          child: FloatingActionButton(
            onPressed: ()=>controller.currentIndex.value = 2,
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)
            ),
            child: Center(
                child: Image.asset('images/qr_code.png',fit: BoxFit.cover,height: 30.h,width: 30.w,)),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          height: 70.h,
          color: primaryColorWhite,
          notchMargin: 10,
          shape: const CircularNotchedRectangle(),
          surfaceTintColor: Colors.transparent,
          child: SizedBox(
            height: 100,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: ()=> controller.currentIndex.value = 0,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Obx(()=> Icon(Icons.home,color: controller.currentIndex.value == 0 ? const Color(0xffC1272D) : const Color(0xff7C7E82),size: 27.sp,)),
                        Obx(()=> Text('Home',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 10.sp,color: controller.currentIndex.value == 0 ? const Color(0xffC1272D) : const Color(0xff7C7E82),),))
                      ],
                    )),
                SizedBox(width: 10.w,),
                GestureDetector(
                    onTap: ()=> controller.currentIndex.value = 1,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Obx(()=> Image.asset('images/transactions.png',fit: BoxFit.cover,height: 20.h,width: 22,color: controller.currentIndex.value == 1 ? const Color(0xffC1272D) : const Color(0xff7C7E82),)),
                        Obx(()=> Text('Transactions',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 10.sp,color: controller.currentIndex.value == 1 ? const Color(0xffC1272D) : const Color(0xff7C7E82),),))
                      ],
                    )),
                SizedBox(width: 25.w,),
                GestureDetector(
                    onTap: ()=> controller.currentIndex.value = 3,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Obx(()=> Image.asset('images/people.png',fit: BoxFit.cover,height: 20.h,width: 22,color: controller.currentIndex.value == 3 ? const Color(0xffC1272D) : const Color(0xff7C7E82),)),
                        Obx(()=> Text('People',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 10.sp,color: controller.currentIndex.value == 3 ? const Color(0xffC1272D) : const Color(0xff7C7E82),),))
                      ],
                    )),
                SizedBox(width: 10.w,),
                GestureDetector(
                    onTap: ()=> controller.currentIndex.value = 4,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Obx(()=> Image.asset('images/profile.png',fit: BoxFit.cover,height: 20.h,width: 22,color: controller.currentIndex.value == 4 ? const Color(0xffC1272D) : const Color(0xff7C7E82),)),
                        Obx(()=> Text('Profile',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 10.sp,color: controller.currentIndex.value == 4 ? const Color(0xffC1272D) : const Color(0xff7C7E82),),))
                      ],
                    )),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
