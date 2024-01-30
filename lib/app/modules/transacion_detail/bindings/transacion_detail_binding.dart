import 'package:get/get.dart';

import '../controllers/transacion_detail_controller.dart';

class TransacionDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TransacionDetailController>(
      () => TransacionDetailController(),
    );
  }
}
