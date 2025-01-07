 import 'package:admin_app/core/pagescall/pagename.dart';
import 'package:admin_app/view/screen/auth/forgetpassword/checkemail.dart';
import 'package:admin_app/view/screen/auth/forgetpassword/resetpassword.dart';
 import 'package:admin_app/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:admin_app/view/screen/auth/login.dart';
 
import 'package:admin_app/view/screen/orders/order_screen.dart';

import 'package:admin_app/view/screen/orders/details.dart';
 import 'package:get/get.dart';

import '../../view/screen/address/add.dart';
import '../../view/screen/address/adddetails.dart';
import '../../view/screen/address/view.dart';
 import '../../view/screen/home_screen.dart';
import '../../view/screen/language.dart';
import '../../view/screen/orders/archive.dart';
import '../../view/screen/orders/pending.dart';
import '../middleware/mymiddleware.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: "/", page: () => const Language(), middlewares: [MyMiddleWare()]),
  //GetPage(name: "/", page: () => const TestView()),
  GetPage(name: AppRoute.login, page: () => const Login(),  middlewares: [MyMiddleWare()]),
  GetPage(name: AppRoute.orderScreen, page: () => const OrderScreenPage()),
  GetPage(name: AppRoute.homePage, page: () => HomePage()),


  // /////////////////////category/////////////////////////////
  // GetPage(name: AppRoute.categoryView, page: () => HomePage()),
  // GetPage(name: AppRoute.categoryAdd, page: () => HomePage()),
  // GetPage(name: AppRoute.categoryEdit, page: () => HomePage()),
  // GetPage(name: AppRoute.categoryDelete, page: () => HomePage()),
  // GetPage(name: AppRoute.itemsView, page: () => HomePage()),
  // GetPage(name: AppRoute.itemsAdd, page: () => HomePage()),
  // GetPage(name: AppRoute.itemsEdit, page: () => HomePage()),
  // GetPage(name: AppRoute.itemsDelete, page: () => HomePage()),



   GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.verfiyCode, page: () => const VerfiyCode()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),


   GetPage(name: AppRoute.addressview, page: () => const AddressView()),
  GetPage(name: AppRoute.addressadd, page: () => const AddressAdd()),
   GetPage(name: AppRoute.orderspending, page: () => const OrdersPending()),
  GetPage(name: AppRoute.ordersarchive, page: () => const OrdersArchiveView()),
  GetPage(name: AppRoute.ordersdetails, page: () => const OrdersDetails()),
  GetPage(
      name: AppRoute.addressadddetails, page: () => const AddressAddDetails()),
];
