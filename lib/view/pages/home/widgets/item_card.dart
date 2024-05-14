import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemCard extends StatelessWidget {
  final String img;
  final String title;

  const ItemCard({super.key, required this.img, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 66.h,
          width: 66.w,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: const Color(0xffF9E9EA),
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(color: const Color(0xffD29193), width: 1)),
          child: Image.asset(
            img,
            height: 34.h,
            width: 34.w,
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          title,
          style: TextStyle(
              fontSize: 8.sp,
              color: const Color(0xff7C7E82),
              fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
