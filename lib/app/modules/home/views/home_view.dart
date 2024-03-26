import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:products/app/modules/transacion_detail/controllers/transacion_detail_controller.dart';
import 'package:products/app/modules/transacion_detail/views/transacion_detail_view.dart';

import '../../dashboard/controllers/dashboard_controller.dart';
import '../../dashboard/views/dashboard_view.dart';
import '../../profile/controllers/profile_controller.dart';
import '../../profile/views/profile_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Brightness systemBrightness =
        MediaQuery.of(context).platformBrightness;
    final isDarkMode = systemBrightness == Brightness.dark;
    print("===========================${controller.numberValue}");

    if(Get.arguments != null){
      controller.numberValue.value = Get.arguments;
      if (controller.numberValue != 0) {
        controller.currentIndex.value = controller.numberValue.value;
        controller.numberValue.value = 0;
      }
    }

    return Scaffold(
      body: Obx(() => _buildRoute(controller.currentIndex.value)),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: isDarkMode ? Colors.white : Colors.black54,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          currentIndex: controller.currentIndex.value,
          onTap: controller.changeTabIndex,
          // isDarkMode ? Colors.blueAccent.shade100 : Colors.black54,
          // Call the method in the HomeController
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.car_rental),
              label: 'Products',
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.monitor_heart_outlined),
            //   label: 'My Activity',
            // ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRoute(int index) {
    List<Widget> _pages = [
      const DashboardView(),
      // const ReportsView(),
      const TransacionDetailView(),
      const ProfileView(),
    ];
    switch (index) {
      case 0:
        return GetBuilder<DashboardController>(
            init: DashboardController(),
            builder: (controller) => const DashboardView());
      case 1:
        return GetBuilder<TransacionDetailController>(
            init: TransacionDetailController(),
            builder: (controller) => const TransacionDetailView());
      // case 2:
      //   return GetBuilder<MyActivityController>(
      //       init: MyActivityController(),
      //       builder: (controller) => const MyActivityView());
      case 2:
        return GetBuilder<ProfileController>(
            init: ProfileController(),
            builder: (controller) => const ProfileView());
      default:
        return Container();
    }
  }
}
