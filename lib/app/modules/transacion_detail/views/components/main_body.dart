import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:products/app/modules/transacion_detail/controllers/transacion_detail_controller.dart';

Widget mainBody(TransacionDetailController controller, BuildContext context) {
  return Obx(() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Brands",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Container(
            height: 90.0,
            padding: EdgeInsets.symmetric(
              vertical: 20,
            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: controller.brandListData.value.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Center(
                        child:
                            Text(controller.brandListData[index]?.brand ?? "")),
                  ),
                );
              },
            ),
          ),
          Text(
            "Categories",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Container(
            height: 100.0,
            padding: EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: controller.categoriesListData.value.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Center(
                        child: Text(
                            controller.categoriesListData[index]?.category ??
                                "")),
                  ),
                );
              },
            ),
          ), // Vertical ListView
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Set the number of columns
                  crossAxisSpacing: 0.0,
                  mainAxisSpacing: 0.0,
                  childAspectRatio: 0.6),
              itemCount: controller.productsListtData.value.length,
              // Set the number of items in each row
              itemBuilder: (context, itemIndex) {
                var product = controller.productsListtData.value;
                return Card(
                    child: Container(
                  height: 190,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Center(
                            child: Image.asset(
                          'assets/tire.png',
                          height: 50,
                        )),
                      ),
                      Text(
                        product[itemIndex]?.itemName ?? "",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.normal),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text(
                          "KES 40,000",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        "Code:\n${product[itemIndex]?.itemCode}",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey),
                      ),
                      Text(
                        "Specification:\n${product[itemIndex]?.specification}",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey),
                      ),
                      Container(
                        width: 80,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Colors.black,
                            width: 2.0,
                          ),
                        ),
                        padding: EdgeInsets.all(10.0),
                        child: Center(
                          child: Text(
                            "${product[itemIndex]?.cartValue ?? 0}",
                            style: TextStyle(
                              // fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          var indexToIncrease = itemIndex;
                          var newValue =
                              (product[indexToIncrease]?.cartValue ?? 0) + 1;
                          controller.productsListtData.value[indexToIncrease]
                              ?.cartValue = newValue;
                          controller.updateCartValue(itemIndex, newValue);
                          // controller.fetchProducts();
                          print(
                              "========new Value=====${controller.productsListtData.value[indexToIncrease]?.cartValue}");
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.green,
                          // Set the text color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                10.0), // Set the border radius
                          ),
                        ),
                        child: Text("Add to Order"),
                      )
                    ],
                  ),
                ));
              },
            ),
          ),

          // Second Horizontal ListView
        ],
      ),
    );
  });
}
