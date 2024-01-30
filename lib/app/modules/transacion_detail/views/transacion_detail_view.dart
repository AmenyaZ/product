import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:products/app/modules/transacion_detail/views/components/appbar.dart';
import 'package:products/app/modules/transacion_detail/views/components/main_body.dart';

import '../controllers/transacion_detail_controller.dart';

class TransacionDetailView extends GetView<TransacionDetailController> {
  const TransacionDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.loadData();
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      body: Column(
        children: [
          appBar(controller),
          Flexible(child: mainBody(controller, context))
          //  Center(
          //   child: Text(
          //     'TransacionDetailView is working',
          //     style: TextStyle(fontSize: 20),
          //   ),
          // ),
        ],
      ),
    );
  }
}
