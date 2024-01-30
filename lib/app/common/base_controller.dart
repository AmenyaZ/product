import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:products/app/data/res/productsData.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/provider/sharepreference_provider.dart';
import '../data/res/brandsData.dart';
import '../data/res/categoriesData.dart';

class BaseController extends GetxController {
  var documentUrls = <String>[].obs;
  var downloadProgress = <String, RxDouble>{}.obs;
  var selectedCompanyId = "".obs;
  var message = "".obs;
  var isLoading = false.obs;
  var userId = "".obs;
  var token = "";
  final brandListData = RxList<BrandsData?>();
  final categoriesListData = RxList<CategoriesData?>();
  var productsListtData = RxList<ProductsData?>();
  var productsListtDataReserve = RxList<ProductsData?>();
  final TextEditingController searchcontroller = TextEditingController();

  // var loginResponse = Rx<LoginResponse?>(null);
  // final database = Get.find<EboardDatabase>();

  var authorized = 'Not Authorized'.obs;
  var isAuthenticating = false.obs;
  var activeSearch = false.obs;

  // final isDarkMode = systemBrightness == Brightness.dark;

  SharedPreferences? preferences;

  @override
  void onInit() {
    preferences = Get.find<SharePreferenceProvider>().preferences;
    // getFiles();
    super.onInit();
  }

  void searchProducts(String searchTerm) {
    productsListtDataReserve = productsListtData;
    var result = productsListtData.value.where((element) => element?.itemName == searchTerm);
    productsListtData.value = (result.map((item) => ProductsData.fromJson(item)).toList());
    // Use the searchResults as needed
    // For example, you might want to update a UI component with the filtered list.
    // filteredProducts.assignAll(searchResults);

    // Note: Replace "filteredProducts" with your desired variable to store the search results.
  }
}
