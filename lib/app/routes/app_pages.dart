import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/transacion_detail/bindings/transacion_detail_binding.dart';
import '../modules/transacion_detail/views/transacion_detail_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.TRANSACION_DETAIL;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.TRANSACION_DETAIL,
      page: () => const TransacionDetailView(),
      binding: TransacionDetailBinding(),
    ),
  ];
}
