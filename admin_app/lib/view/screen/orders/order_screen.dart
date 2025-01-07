import 'package:admin_app/core/constant/color.dart';
import 'package:admin_app/core/pagescall/pagename.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/orders/order_screen_controller.dart';
import '../../widget/bottomnavbarscreen/custommaterialbutton.dart';

class OrderScreenPage extends StatelessWidget {
  const OrderScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OrderScreenControllerImp());
    return GetBuilder<OrderScreenControllerImp>(
      assignId: true,
      builder: (controller) {
        return Scaffold(
            body: controller.ListPage.elementAt(controller.currentpage),
            //controller.ListPage[controller.currentPage],

            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: BottomAppBar(
              shape: const CircularNotchedRectangle(),
              notchMargin: 10,
              padding: const EdgeInsets.only(
                top: 10,
              ),
              child: Row(children: [
                ...List.generate(
                    controller.ListPage.length,
                    (index) => Expanded(
                          child: CustomMaterialButton(
                              onpressed: () {
                                controller.changePage(index);
                              },
                              //    iconbutton: Icons.home,
                              iconbutton: controller.bottomNav[index]['icon'],
                              //    active: controller.changePage(0) == true,
                              active: controller.currentpage == index
                                  ? true
                                  : false,
                              textButton: controller.bottomNav[index]['name']),
                        ))
              ]),
            ));
      },
    );
  }
}
