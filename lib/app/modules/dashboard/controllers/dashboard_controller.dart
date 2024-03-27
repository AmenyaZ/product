import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class DashboardController extends GetxController {
  //TODO: Implement DashboardController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }
  void navigatetoProducts() {
    Get.offAllNamed(Routes.HOME, arguments: 1);
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
