import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class SignInController extends GetxController {
  //TODO: Implement SignInController

  final count = 0.obs;
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }
  void navigatetoHome() {
    Get.offAllNamed(Routes.HOME);
  }
  void navigatetoSignUp() {
    Get.offAllNamed(Routes.SIGN_UP);
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
