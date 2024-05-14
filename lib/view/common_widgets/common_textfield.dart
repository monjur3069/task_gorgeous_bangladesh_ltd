import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  const CommonTextField({
    super.key,
    required this.controller, required this.hintText, this.keyboardType,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType ?? TextInputType.text,
      style: const TextStyle(color: Colors.black,),
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        hintStyle: const TextStyle(color: Color(0xffC2C3C5),),
        hintText: hintText,
        contentPadding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 20),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18.r),
          borderSide: const BorderSide(color: Color(0xffC2C3C5), width: 2.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18.r),
          borderSide: const BorderSide(color: Color(0xffC2C3C5), width: 2.0),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'This field must not be empty';
        }
        return null;
      },
    );
  }
}