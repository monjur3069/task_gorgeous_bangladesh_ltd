import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:task_gorgeous_bangladesh_ltd/constants.dart';
import 'package:task_gorgeous_bangladesh_ltd/routes/routes_name.dart';
import 'package:task_gorgeous_bangladesh_ltd/view/common_widgets/common_Text_widget.dart';
import 'package:task_gorgeous_bangladesh_ltd/view/common_widgets/common_button.dart';
import 'package:task_gorgeous_bangladesh_ltd/view/common_widgets/common_textfield.dart';
import 'package:task_gorgeous_bangladesh_ltd/view/pages/sign_up/sign_up_controller.dart';
import 'package:task_gorgeous_bangladesh_ltd/view/pages/sign_up/widgets/common_widgets_sign_up.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<SignUpController>();
    return Scaffold(
      backgroundColor: const Color(0xff891C20),
      body: Form(
        key: controller.formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40.h,
            ),
            const Center(
                child: Text(
              'Sign Up',
              style: TextStyle(
                  fontSize: 20,
                  color: primaryColorWhite,
                  fontWeight: FontWeight.w600),
            )),
            SizedBox(
              height: 30.h,
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
                  padding:
                      const EdgeInsets.only(top: 10.0, right: 16, left: 16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome to us,',
                        style: TextStyle(
                            color: const Color(0xffC1272D),
                            fontWeight: FontWeight.w600,
                            fontSize: 24.sp),
                      ),
                      Text(
                        'Hello there, create New account',
                        style: TextStyle(
                            color: const Color(0xff272A31),
                            fontWeight: FontWeight.w500,
                            fontSize: 12.sp),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Obx(
                            ()=> GestureDetector(
                                onTap: () async {
                              await showModalBottomSheet(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      DraggableScrollableSheet(
                                        initialChildSize: 0.43,
                                        minChildSize: 0.43,
                                        maxChildSize: 0.43,
                                        expand: false,
                                        builder: (BuildContext context,
                                            ScrollController scrollController) {
                                          return Container(
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                            decoration: BoxDecoration(
                                                color:
                                                primaryColorWhite,
                                                borderRadius:
                                                BorderRadius.circular(
                                                    10)),
                                            child: ListView(
                                              controller: scrollController,
                                              physics:
                                              const NeverScrollableScrollPhysics(),
                                              children: [
                                                ListTile(
                                                  onTap: () {
                                                    controller.imageSource =
                                                        ImageSource.camera;
                                                    controller.getFrontImage();
                                                    Get.back();
                                                  },
                                                  contentPadding:
                                                  const EdgeInsets.only(
                                                      left: 10, top: 10),
                                                  leading: CircleAvatar(
                                                      backgroundColor:
                                                      Colors.grey.shade300,
                                                      radius: 16,
                                                      child: const Icon(
                                                        Icons.camera_alt,
                                                        color:
                                                        Colors.black,
                                                        size: 16,
                                                      )),
                                                  title: const CommonTextWidget(
                                                    text: 'Take Photo',
                                                    fontSize: 14,
                                                    fontColor:
                                                    Colors.black,
                                                  ),
                                                ),
                                                ListTile(
                                                  onTap: () {
                                                    controller.imageSource =
                                                        ImageSource.gallery;
                                                    controller.getFrontImage();
                                                    Get.back();
                                                  },
                                                  contentPadding:
                                                  const EdgeInsets.only(
                                                      left: 8),
                                                  leading: CircleAvatar(
                                                      backgroundColor:
                                                      Colors.grey.shade300,
                                                      radius: 16,
                                                      child: const Icon(
                                                        Icons.folder_copy,
                                                        color:
                                                        Colors.black,
                                                        size: 14,
                                                      )),
                                                  title: const CommonTextWidget(
                                                    text: 'Upload Photo',
                                                    fontSize: 16,
                                                    fontColor:
                                                    Colors.black,
                                                  ),
                                                ),

                                              ],
                                            ),
                                          );
                                        },
                                      ));
                            },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15.r),
                                  child: controller.frontImgUrl.value.isEmpty ? buildContainer('Scan the front side of NID','card with camera') : Image.file(
                                    File(controller.frontImage!.path)
                                        .absolute,
                                    height: 129.h,
                                    width: 158.w,
                                    fit: BoxFit.cover,
                                  ),
                                )
                            ),
                          ),
                          SizedBox(width: 10.w,),
                          Obx(
                            ()=> GestureDetector(
                                onTap: () async {
                              await showModalBottomSheet(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      DraggableScrollableSheet(
                                        initialChildSize: 0.43,
                                        minChildSize: 0.43,
                                        maxChildSize: 0.43,
                                        expand: false,
                                        builder: (BuildContext context,
                                            ScrollController scrollController) {
                                          return Container(
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                            decoration: BoxDecoration(
                                                color:
                                                primaryColorWhite,
                                                borderRadius:
                                                BorderRadius.circular(
                                                    10)),
                                            child: ListView(
                                              controller: scrollController,
                                              physics:
                                              const NeverScrollableScrollPhysics(),
                                              children: [
                                                ListTile(
                                                  onTap: () {
                                                    controller.imageSource =
                                                        ImageSource.camera;
                                                    controller.getBackImage();
                                                    Get.back();
                                                  },
                                                  contentPadding:
                                                  const EdgeInsets.only(
                                                      left: 10, top: 10),
                                                  leading: CircleAvatar(
                                                      backgroundColor:
                                                      Colors.grey.shade300,
                                                      radius: 16,
                                                      child: const Icon(
                                                        Icons.camera_alt,
                                                        color:
                                                        Colors.black,
                                                        size: 16,
                                                      )),
                                                  title: const CommonTextWidget(
                                                    text: 'Take Photo',
                                                    fontSize: 14,
                                                    fontColor:
                                                    Colors.black,
                                                  ),
                                                ),
                                                ListTile(
                                                  onTap: () {
                                                    controller.imageSource =
                                                        ImageSource.gallery;
                                                    controller.getBackImage();
                                                    Get.back();
                                                  },
                                                  contentPadding:
                                                  const EdgeInsets.only(
                                                      left: 8),
                                                  leading: CircleAvatar(
                                                      backgroundColor:
                                                      Colors.grey.shade300,
                                                      radius: 16,
                                                      child: const Icon(
                                                        Icons.folder_copy,
                                                        color:
                                                        Colors.black,
                                                        size: 14,
                                                      )),
                                                  title: const CommonTextWidget(
                                                    text: 'Upload Photo',
                                                    fontSize: 16,
                                                    fontColor:
                                                    Colors.black,
                                                  ),
                                                ),

                                              ],
                                            ),
                                          );
                                        },
                                      ));
                            },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15.r),
                                  child: controller.backImgUrl.value.isEmpty ? buildContainer('Scan the back side of NID','card with camera'): Image.file(
                                    File(controller.backImage!.path)
                                        .absolute,
                                    height: 129.h,
                                    width: 158.w,
                                    fit: BoxFit.cover,
                                  ),
                                )
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      ///NID
                      CommonTextField(
                        controller: controller.nidController,
                        hintText: 'NID No.',
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      ///First Name
                      CommonTextField(
                        controller: controller.firstNameController,
                        hintText: 'First Name',
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      ///Last Name
                      CommonTextField(
                        controller: controller.lastNameController,
                        hintText: 'Last Name',
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            ///DOB
                            child: CommonTextField(
                              controller: controller.dob,
                              hintText: 'Date of Birth',
                            ),
                          ),
                          SizedBox(width: 10.w,),
                          Expanded(
                            ///Gender
                            child: CommonTextField(
                              controller: controller.genderController,
                              hintText: 'Male',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      ///Phone
                      CommonTextField(
                        controller: controller.phoneController,
                        hintText: 'Mobile Number',
                        keyboardType: TextInputType.phone,
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      ///Password
                      CommonTextField(
                        controller: controller.passwordController,
                        hintText: 'Password',
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Obx(()=> Checkbox(value: controller.isChecked.value,activeColor: const Color(0xffC1272D), onChanged: (bool? value) {
                            controller.isChecked.value = value!;
                          })),
                          SizedBox(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'By creating an account you agree',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'to our   ',
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      'Term and Condtions',
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        color: const Color(0xffC1272D),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),

                        ],
                      ),
                      SizedBox(height: 20.h,),
                      Obx(()=> GestureDetector(onTap: ()=>Get.toNamed(Routes.bottomBarRoute),child: CommonButton(btnName: 'Sign Up',btnColor: controller.isChecked.value ? const Color(0xffC1272D) : const Color(0xffF9E9EA),))),
                      SizedBox(height: 10.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Have an account?',style: TextStyle(color: const Color(0xffC2C3C5),fontWeight: FontWeight.w500,fontSize: 12.sp),),
                          TextButton(onPressed: ()=> Get.toNamed(Routes.signInRoute), child: Text('Sign In',style: TextStyle(color: const Color(0xffC1272D),fontWeight: FontWeight.w500,fontSize: 14.sp),),)
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
