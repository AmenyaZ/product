import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:products/app/modules/transacion_detail/controllers/transacion_detail_controller.dart';

Widget appBar(TransacionDetailController controller) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(10),
        bottomRight: Radius.circular(10)
      ),
    ),
    child: Column(children: [
      AppBar(
        leading: Icon(
          Icons.arrow_back_ios_new, // Use any icon from the Icons class
          size: 30.0,
          color: Colors.indigo, // Set the size of the icon
        ),
        title: const Text('Transacion Detail'),
        centerTitle: true,
        actions: [
          // Stack(
          // children: [
          //   Text("4"),
          //   Icon(
          //     Icons.arrow_back_ios_new, // Use any icon from the Icons class
          //     size: 48.0, // Set the size of the icon
          //   ),
          // ],
          // ),
          Container(
            padding: EdgeInsets.all(10),
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  child: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.indigo, // Set the size of the icon
                    // Use any icon from the Icons class
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Text(
                      "4",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // IconButton(onPressed: (){}, icon: Icons.shopping_cart_outlined)
        ],
      ),
      Container(
        height: 1,
        color: Colors.grey.shade300,
      ),
      Obx(() => Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: TextField(
          controller: controller.searchcontroller,
          // controller: controller.searchController,
          // autofocus: true,
          decoration: InputDecoration(
            labelText: "Search Products",
            hintText: "Search Products",
            suffixIcon: controller.activeSearch.value == false ?
            InkWell(
              child: Icon(Icons.search),
              onTap: () {
                controller.activeSearch.value = true;
                controller.searchProducts(controller.searchcontroller.text);

                // controller.performSearch(controller.searchController.text);
              },
            ): InkWell(
              child: Icon(Icons.cancel_outlined),
              onTap: () {
                controller.activeSearch.value = false;
                controller.fetchProducts();
                // controller.performSearch(controller.searchController.text);
              },
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
          ),
        ),
      ),)
    ]),
  );
}
