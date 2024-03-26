import 'dart:convert';
import 'dart:io';

import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:products/app/common/base_controller.dart';
import 'package:products/app/data/res/brandsData.dart';
import 'package:products/app/data/res/categoriesData.dart';
import 'package:products/app/data/res/productsData.dart';

import '../../../data/provider/data_provider.dart';
import '../../../routes/app_pages.dart';

class TransacionDetailController extends BaseController {
  //TODO: Implement TransacionDetailController

  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  void loadData() {
    print("=======Load Data");
    fetchBrands();
    fetchcategories();
    fetchProducts();
  }

  @override
  void onReady() {
    super.onReady();
    loadData();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> fetchcategories() async {
    final List<dynamic> data = await DataService().fetchData("categories");

    if (data.isNotEmpty) {
      // Assuming brandListData is a list, use assignAll directly
      categoriesListData.value =
          (data.map((item) => CategoriesData.fromJson(item)).toList());

      // Assuming brandList is an RxList, use assignAll directly

      print("=======categoriesListData==${categoriesListData.value}");
    }
  }

  Future<void> fetchBrands() async {
    final List<dynamic> data = await DataService().fetchData("brands");

    if (data.isNotEmpty) {
      // Assuming brandListData is a list, use assignAll directly
      brandListData.value =
          (data.map((item) => BrandsData.fromJson(item)).toList());

      // Assuming brandList is an RxList, use assignAll directly

      print("=======brandListData==${brandListData.value}");
    }
  }



  // Future<void> fetchBrands() async {
  //   final data = await DataService().fetchData("brands");
  //   // print("=data===${data}");
  //   brandListData.value = BrandsData.fromJson(data);
  //   print("=======brand==${brandListData}");
  //   brandList.assignAll(data);
  // }
  Future<void> fetchProducts() async {
    final List<dynamic> data = await DataService().fetchData("products");

    if (data.isNotEmpty) {
      // Assuming productsListtData is a list, use assignAll directly
      productsListtData.value =
          (data.map((item) => ProductsData.fromJson(item)).toList());

      print("=======productsListtData==${data}");
    }
  }

  // Future<void> updateCartValue(num? productId, num newCartValue) async {
  //   try {
  //     // Read the JSON file
  //     String jsonString = await rootBundle.loadString('assets/products.json');
  //
  //     // Parse the JSON string into a List<Map<String, dynamic>>
  //     List<Map<String, dynamic>> productList =
  //     List<Map<String, dynamic>>.from(json.decode(jsonString));
  //
  //     // Find the product with the specified productId
  //     Map<String, dynamic>? productToUpdate = productList.firstWhere(
  //           (product) => product['id'] == productId,
  //       orElse: () => <String, dynamic>{},
  //     );
  //
  //     // If the product is found, update its cartValue
  //     if (productToUpdate != null) {
  //       productToUpdate['cart_value'] = newCartValue;
  //
  //       // Write the updated JSON data back to the file
  //       await rootBundle
  //           .loadString('assets/products.json')
  //           .then((jsonString) async {
  //         productList =
  //         List<Map<String, dynamic>>.from(json.decode(jsonString));
  //         await rootBundle
  //             .loadString('assets/products.json')
  //             .then((jsonString) async {
  //           productList =
  //           List<Map<String, dynamic>>.from(json.decode(jsonString));
  //           // Write the updated JSON data back to the file
  //           await rootBundle
  //               .loadString('assets/products.json')
  //               .then((jsonString) async {
  //             productList =
  //             List<Map<String, dynamic>>.from(json.decode(jsonString));
  //             // Write the updated JSON data back to the file
  //             jsonString = jsonEncode(productList);
  //           });
  //         });
  //       });
  //
  //       print('-----------------Cart value updated successfully.');
  //     } else {
  //       print('----------Product with ID $productId not found.');
  //     }
  //   } catch (e) {
  //     print('Error updating cart value: $e');
  //   }
  // }

  // Future<void> updateCartValue(num? productId, num newCartValue ) async {
  //   // Read the JSON file
  //   File jsonFile = File('assets/products.json');
  //   // String jsonString = jsonFile.readAsStringSync();
  //   // String jsonString = await rootBundle.loadString('assets/products.json');
  //   final String jsonString = await rootBundle.loadString('assets/products.json');
  //
  //   // Parse the JSON string into a List<Map<String, dynamic>>
  //   // List<Map<String, dynamic>> productList = jsonDecode(jsonString);
  //   List<Map<String, dynamic>> productList = List<Map<String, dynamic>>.from(json.decode(jsonString));
  //
  //
  //   // Find the product with the specified productId
  //   Map<String, dynamic>? productToUpdate = productList.firstWhere(
  //         (product) => product['id'] == productId,
  //     orElse: () => <String, dynamic>{},
  //   );
  //
  //   // If the product is found, update its cartValue
  //   if (productToUpdate != null) {
  //     productToUpdate['cart_value'] = newCartValue;
  //
  //     // Write the updated JSON data back to the file
  //     jsonFile.writeAsStringSync(jsonEncode(productList));
  //     print('-----------------Cart value updated successfully.');
  //   } else {
  //     print('----------Product with ID $productId not found.');
  //   }
  // }

  Future<void> updateCartValue(int index, num newValue) async {
    try {
      // final file = File('/products/assets/products.json');
      final directory = await getApplicationDocumentsDirectory();
      print("-----------------------____${directory}");
      final file = File('${directory.path}/products.json');
      final jsonString = await file.readAsString();
      final productsList = jsonDecode(jsonString) as List<dynamic>;

      if (index >= 0 && index < productsList.length) {
        productsList[index]['cart_value'] = newValue;

        final updatedJsonString = jsonEncode(productsList);
        await file.writeAsString(updatedJsonString);
        print('Product cart value updated successfully!');
      } else {
        print('Invalid index: $index');
      }
    } catch (error) {
      print('Error updating JSON file: $error');
    }
  }


  void increment() => count.value++;
}
