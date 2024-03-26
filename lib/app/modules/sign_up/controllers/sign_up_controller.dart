import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class SignUpController extends GetxController {
  //TODO: Implement SignUpController

  final count = 0.obs;

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController secondNameController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController emailAddressController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  void navigatetoHome() {
    Get.offAllNamed(Routes.HOME);
  }

  void navigatetoSignIn() {
    Get.offAllNamed(Routes.SIGN_IN);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
