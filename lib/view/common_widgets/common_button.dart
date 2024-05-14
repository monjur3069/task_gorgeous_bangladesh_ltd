import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_gorgeous_bangladesh_ltd/constants.dart';

class CommonButton extends StatelessWidget {
  final String btnName;
  final Color? btnColor;
  const CommonButton({
    super.key, required this.btnName, this.btnColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: btnColor ?? const Color(0xffF9E9EA),
          borderRadius: BorderRadius.circular(15.r)
      ),
      child: Text(btnName,style: TextStyle(color: primaryColorWhite,fontWeight: FontWeight.w500,fontSize: 20.sp),),
    );
  }
}