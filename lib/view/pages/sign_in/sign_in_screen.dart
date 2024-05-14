import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task_gorgeous_bangladesh_ltd/constants.dart';
import 'package:task_gorgeous_bangladesh_ltd/routes/routes_name.dart';
import 'package:task_gorgeous_bangladesh_ltd/view/common_widgets/common_button.dart';
import 'package:task_gorgeous_bangladesh_ltd/view/common_widgets/common_textfield.dart';
import 'package:task_gorgeous_bangladesh_ltd/view/pages/sign_in/sign_in_controller.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<SignInController>();
    return Scaffold(
      backgroundColor: const Color(0xff891C20),
      body: Form(
        key: controller.formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40.h,),
            const Center(child: Text('Sign In',style: TextStyle(fontSize: 20,color: primaryColorWhite,fontWeight: FontWeight.w600),)),
            SizedBox(height: 30.h,),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: primaryColorWhite,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20.r),topRight: Radius.circular(20.r))
                ),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.only(top: 10.0,right: 16,left: 16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Welcome Back',style: TextStyle(color: const Color(0xffC1272D),fontWeight: FontWeight.w600,fontSize: 24.sp),),
                      Text('Hello there, sign in to continue',style: TextStyle(color: const Color(0xff272A31),fontWeight: FontWeight.w500,fontSize: 12.sp),),
                      SizedBox(height: 20.h,),
                      Center(child: Image.asset('images/sign_in_img_1.png',fit: BoxFit.cover,width: 213.w,height: 165.h,)),
                      SizedBox(height: 20.h,),
                      CommonTextField(controller: controller.phoneController,hintText: 'Mobile Number',),
                      SizedBox(height: 15.h,),
                      CommonTextField(controller: controller.passwordController,hintText: 'Password',),
                      SizedBox(height: 15.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Forgot your password ?',style: TextStyle(color: const Color(0xffC2C3C5),fontWeight: FontWeight.w500,fontSize: 12.sp),),
                        ],
                      ),
                      SizedBox(height: 25.h,),
                      GestureDetector(onTap: ()=>Get.toNamed(Routes.bottomBarRoute),child: const CommonButton(btnName: 'Sign in',)),
                      SizedBox(height: 20.h,),
                      Center(child: Image.asset('images/sign_in_img_2.png',fit: BoxFit.cover,width: 64.w,height: 64.h,)),
                      SizedBox(height: 10.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Don\'t have an account? ',style: TextStyle(color: const Color(0xffC2C3C5),fontWeight: FontWeight.w500,fontSize: 12.sp),),
                          TextButton(onPressed: ()=> Get.toNamed(Routes.signUpRoute), child: Text('Sign Up',style: TextStyle(color: const Color(0xffC1272D),fontWeight: FontWeight.w500,fontSize: 14.sp),),)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}



