import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Container buildContainer(String first,String second) {
  return Container(
    width: 158.w,
    height: 129.h,
    alignment: Alignment.center,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(color: const Color(0xffC2C3C5), width: 1)),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          first,
          style: TextStyle(
              color: const Color(0xff7C7E82),
              fontWeight: FontWeight.w400,
              fontSize: 10.sp),
        ),
        Text(
          second,
          style: TextStyle(
              color: const Color(0xff7C7E82),
              fontWeight: FontWeight.w400,
              fontSize: 10.sp),
        ),
        SizedBox(
          height: 5.h,
        ),
        const Icon(
          Icons.camera_alt,
          color: Color(0xffC1272D),
          size: 30,
        )
      ],
    ),
  );
}