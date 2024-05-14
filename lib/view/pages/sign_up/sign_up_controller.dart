import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class SignUpController extends GetxController{
  final formKey = GlobalKey<FormState>();
  TextEditingController nidController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController dob = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  RxBool isChecked = false.obs;




  ImageSource imageSource = ImageSource.camera;
  final picker = ImagePicker();
  var frontImgUrl = "".obs;
  var backImgUrl = "".obs;
  File? frontImage;
  File? backImage;

  getFrontImage() async {
    final pickedFile =
    await picker.pickImage(source: imageSource, imageQuality: 25);
    if (pickedFile != null) {
      frontImage = File(pickedFile.path);
      frontImgUrl.value = pickedFile.path; // Set imgUrl to the path of the selected image
    }
  }

  getBackImage() async {
    final pickedFile =
    await picker.pickImage(source: imageSource, imageQuality: 25);
    if (pickedFile != null) {
      backImage = File(pickedFile.path);
      backImgUrl.value = pickedFile.path; // Set imgUrl to the path of the selected image
    }
  }



  @override
  void dispose() {
    nidController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    dob.dispose();
    genderController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}