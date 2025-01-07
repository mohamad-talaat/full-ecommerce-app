import 'package:delivery_app/core/middleware/mymiddleware.dart';
import 'package:delivery_app/core/pagescall/pagename.dart';
import 'package:delivery_app/view/screen/auth/forgetpassword/checkemail.dart';
import 'package:delivery_app/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:delivery_app/view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'package:delivery_app/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:delivery_app/view/screen/auth/login.dart';
 
import 'package:delivery_app/view/screen/home_page.dart';
 import 'package:delivery_app/view/screen/language.dart';

import 'package:delivery_app/view/screen/orders/details.dart';
 import 'package:get/get.dart';

import '../../view/screen/address/add.dart';
import '../../view/screen/address/adddetails.dart';
import '../../view/screen/address/view.dart';
 import '../../view/screen/checkout.dart';
import '../../view/screen/orders/archive.dart';
import '../../view/screen/orders/pending.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: "/", page: () => const Language(), middlewares: [MyMiddleWare()]),
  //GetPage(name: "/", page: () => const TestView()),
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.homePage, page: () => const HomePage()),
   GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.verfiyCode, page: () => const VerfiyCode()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),


   GetPage(name: AppRoute.addressview, page: () => const AddressView()),
  GetPage(name: AppRoute.addressadd, page: () => const AddressAdd()),
  GetPage(name: AppRoute.checkout, page: () => const Checkout()),
  GetPage(name: AppRoute.orderspending, page: () => const OrdersPending()),
  GetPage(name: AppRoute.ordersarchive, page: () => const OrdersArchiveView()),
  GetPage(name: AppRoute.ordersdetails, page: () => const OrdersDetails()),
  GetPage(
      name: AppRoute.addressadddetails, page: () => const AddressAddDetails()),
];
