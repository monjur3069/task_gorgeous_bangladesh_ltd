import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task_gorgeous_bangladesh_ltd/constants.dart';
import 'package:task_gorgeous_bangladesh_ltd/view/pages/home/home_controller.dart';
import 'package:task_gorgeous_bangladesh_ltd/view/pages/home/widgets/item_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<HomeController>();
    return Scaffold(
      backgroundColor: const Color(0xff891C20),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40.h,
          ),
          Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/splash_img_2.png',
                fit: BoxFit.cover,
                width: 40.w,
                height: 40.h,
              ),
              Text(
                '  Payments All',
                style: TextStyle(
                    fontSize: 20.sp,
                    color: primaryColorWhite,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic),
              ),
            ],
          )),
          SizedBox(
            height: 30.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              'Hi, nobody',
              style: TextStyle(
                fontSize: 16.sp,
                color: primaryColorWhite,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0,right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){
                    controller.showBalance();
                  },
                  child: Container(
                    width: 160.w,
                    height: 35.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Obx(
                              ()=> AnimatedOpacity(
                            opacity: controller.isBallanceShown.value ? 1 : 0,
                            duration: const Duration(milliseconds: 500),
                            child: Text(
                              '1020.00 ৳',
                              style: TextStyle(
                                  color: Colors.pink,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Obx(
                              ()=> AnimatedOpacity(
                            opacity: controller.isBallance.value ? 1 : 0,
                            duration: const Duration(milliseconds: 500),
                            child: Text(
                              'Tap for Balance',
                              style: TextStyle(
                                  color: Colors.pink,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Obx(
                              ()=> AnimatedPositioned(
                            left: controller.isAnimation.value ? 135.w : 5.w,
                            curve: Curves.fastOutSlowIn,
                            duration: const Duration(milliseconds: 1100),
                            child: Container(
                              height: 20.h,
                              width: 20.w,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: const Color(0xffC1272D),
                                  borderRadius: BorderRadius.circular(50.r)),
                              child: FittedBox(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.r),
                                    child: Image.asset('images/splash_img_2.png',fit: BoxFit.cover,width: 20.w,height: 20.h,)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Stack(
                  children: [
                    Icon(Icons.notifications,color: primaryColorWhite,size: 30.sp,),
                    Positioned(
                      right: 2,
                      child: CircleAvatar(
                        radius: 7.5.r,
                        backgroundColor: const Color(0xffFF4267),
                        child: Text('3',style: TextStyle(fontSize: 10.sp,fontWeight: FontWeight.w500,color: primaryColorWhite),),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: primaryColorWhite,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      topRight: Radius.circular(20.r))),
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(top: 16.0, right: 16, left: 16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Services',
                      style: TextStyle(
                          fontSize: 16.sp,
                          color: const Color(0xff52555B),
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ItemCard(img: 'images/send_money.png', title: 'Send Money'),
                        ItemCard(img: 'images/cash_out.png', title: 'Cash Out'),
                        ItemCard(img: 'images/mobile_recharge.png', title: 'Mobile Recharge'),
                        ItemCard(img: 'images/add_money.png', title: 'Add Money'),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ItemCard(img: 'images/bank_transfer.png', title: 'Bank Transfer'),
                        ItemCard(img: 'images/travel_card.png', title: 'Travel Card'),
                        ItemCard(img: 'images/mobile_banking.png', title: 'Mobile Banking'),
                        ItemCard(img: 'images/ticket.png', title: 'Ticketing'),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const ItemCard(img: 'images/donation.png', title: 'Donation'),

                    SizedBox(height: 20.h,),
                    Text(
                      'Services',
                      style: TextStyle(
                          fontSize: 16.sp,
                          color: const Color(0xff52555B),
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ItemCard(img: 'images/quick_pay.png', title: 'Quick Pay'),
                        ItemCard(img: 'images/bill_pay.png', title: 'Bill Pay'),
                        ItemCard(img: 'images/govt_fees.png', title: 'Govt. Fees'),
                        ItemCard(img: 'images/salary_pay.png', title: 'Salary Pay'),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const ItemCard(img: 'images/merchant_pay.png', title: 'Merchant Pay'),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

}
