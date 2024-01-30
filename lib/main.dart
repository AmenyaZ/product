import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/data/provider/sharepreference_provider.dart';
import 'app/routes/app_pages.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Get.putAsync(() async {
    final provider = SharePreferenceProvider();
    await provider.init();
    return provider;
  });
  // Check if the user is authenticated
  final SharePreferenceProvider sharedPrefsService = Get.find();

  runApp(
    GetMaterialApp(
      title: "Application",
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
