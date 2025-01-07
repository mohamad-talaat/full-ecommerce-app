import 'package:admin_app/view/screen/bottomnavbarscreen/home.dart';
import 'package:admin_app/view/screen/orders/pending.dart';

import 'package:admin_app/view/screen/settings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../view/screen/orders/accepted.dart';

 abstract class OrderScreenController extends GetxController {
  changePage(int currentpage);
}

 class OrderScreenControllerImp extends OrderScreenController {
   List<Widget> ListPage = <Widget>[
    const OrdersPending(),

    const OrdersAccepted(),
     const Settings(),
  ];
  List bottomNav = [
    {"name": "Pending", "icon": Icons.pending_actions_outlined},

    {"name": "Accepted", "icon": Icons.shopping_cart},
     {"name": "Settings", "icon": Icons.settings},
  ];

  int currentpage = 0;
  @override
  changePage(int index) {
    currentpage = index;
    update();
  }
}
