import 'package:delivery_app/view/screen/bottomnavbarscreen/home.dart';
import 'package:delivery_app/view/screen/orders/pending.dart';

import 'package:delivery_app/view/screen/settings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view/screen/orders/accepted.dart';

// ignore: camel_case_types
abstract class homescreenController extends GetxController {
  changePage(int currentpage);
}

// ignore: camel_case_types
class homescreenControllerImp extends homescreenController {
  // ignore: non_constant_identifier_names
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
/*   List ListtitleButton = [
    "Home",
    "favourite",
    "profile",
    "settings",
  ];
  // ignore: non_constant_identifier_names
  List ListIconeButton = [
    Icons.home,
    Icons.favorite,
    Icons.person,
    Icons.settings,
  ];
 */
  int currentpage = 0;
  @override
  changePage(int index) {
    currentpage = index;
    update();
  }
}
