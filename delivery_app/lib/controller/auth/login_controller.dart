import 'package:delivery_app/core/class/statusrequest.dart';
import 'package:delivery_app/core/pagescall/pagename.dart';
import 'package:delivery_app/core/functions/handlingDataController.dart';
import 'package:delivery_app/core/services/services.dart';
import 'package:delivery_app/data/datasource/remote/auth/logindata.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
   goToForgetPassword();
}

class LoginControllerImp extends LoginController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  bool isshowpassword = true;

  showPassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }

  late TextEditingController email;
  late TextEditingController password;
  StatusRequest statusRequest = StatusRequest.none;

  MyServices myServices = Get.find();

  LoginData testLoginData = LoginData(Get.find());
  @override
  login() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response =
          await testLoginData.postData(email.text.trim(), password.text.trim());
      logger.w("=============================== Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        // then the data exist and no problem ::::
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          // if (response['data']['delivery_approve'] == 1) {
          myServices.sharedPreferences.setString("step", "2");
          Get.offNamed(AppRoute.homePage);
          myServices.sharedPreferences
              .setString("id", response['data']['delivery_id'].toString())
              .toString();
          myServices.sharedPreferences
              .setString("name", response['data']['delivery_name']);
          myServices.sharedPreferences
              .setString("email", response['data']['delivery_email']);
          myServices.sharedPreferences
              .setString("phone", response['data']['delivery_phone']);
          FirebaseMessaging.instance.subscribeToTopic("delivery");
          String deliveryid = myServices.sharedPreferences.getString("id")!;
          FirebaseMessaging.instance.subscribeToTopic("delivery$deliveryid");
          // }

          // else {
          //   Get.offNamed(AppRoute.verfiyCodeSignUp,
          //       arguments: {"email": email.text});
          // }
        } else {
          Get.defaultDialog(
              title: "Warning",
              titleStyle: const TextStyle(color: Colors.red),
              middleText: "Email or Password is Not Correct");
          statusRequest = StatusRequest.failure;
        }
      }
      update();

      //   debugPrint("Valid");
      // } else {
      //   debugPrint("Not Valid");
    }
  }


  @override
  void onInit() {
    FirebaseMessaging.instance.getToken().then((value) {
      debugPrint(value);
      //  String? token = value;
    });
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }
}
