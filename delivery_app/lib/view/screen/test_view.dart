import 'package:delivery_app/controller/test_controller.dart';
import 'package:delivery_app/core/constant/color.dart';
import 'package:delivery_app/view/widget/handlingdata/handlingdataview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestView extends StatelessWidget {
  const TestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Title")),
        backgroundColor: AppColor.primaryColor,
      ),
      body: GetBuilder<TestController>(builder: (controller) {
        debugPrint("StatusRequest: ${controller.statusRequest}");
        return HandlingDataView(
            statusRequest: controller.statusRequest,
            widget: ListView.builder(
                itemCount: controller.data.length,
                itemBuilder: (context, index) {
                  return Text("${controller.data
                      //[index]["title"]
                      }");
                }));
      }),
    );
  }
}
