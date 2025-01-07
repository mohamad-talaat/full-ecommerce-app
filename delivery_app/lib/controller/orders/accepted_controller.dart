import 'package:delivery_app/core/class/statusrequest.dart';
import 'package:delivery_app/core/services/services.dart';
import 'package:delivery_app/data/datasource/remote/orders/accepted_data.dart';
import 'package:delivery_app/data/datasource/remote/orders/pending_data.dart';
import 'package:delivery_app/data/model/ordersmodel.dart';
import 'package:get/get.dart';

import '../../core/functions/handlingDataController.dart';

class OrdersAcceptedController extends GetxController {
  OrdersAcceptedData ordersAcceptedData = OrdersAcceptedData(Get.find());
  List<OrdersModel> data = [];

  late StatusRequest statusRequest ;// = StatusRequest.none;

  MyServices myServices = Get.find();

  String printOrderType(String val) {
    if (val == "0") {
      return "delivery";
    } else {
      return "Recive";
    }
  }

  String printPaymentMethod(String val) {
    if (val == "0") {
      return "Cash On Delivery";
    } else {
      return "Payment Card";
    }
  }

  String printOrderStatus(String val) {
    if (val == "0") {
      return "Pending Approval";
    } else if (val == "1") {
      return "The Order is being Prepared ";
    } else if (val == "2") {
      return "Ready To Picked up by Delivery man";
    } else if (val == "3") {
      return "On The Way";
    } else {
      return "Archive";
    }
  }

  getAcceptedOrders(   ) async {
    data.clear();
    statusRequest = StatusRequest.loading;
    update();
    var response = await ordersAcceptedData
        .getData(myServices.sharedPreferences.getString("id")!);
    logger.w("=============================== Controller $response ");

    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        List listdata = response['data'];
        data.addAll(listdata.map((e) => OrdersModel.fromJson(e)));
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
    update();
  }

  doneOrders(String usersid, String ordersid) async {
    data.clear();
    statusRequest = StatusRequest.loading;
    update();
    var response = await ordersAcceptedData
        .doneDelivery(usersid , ordersid);   // not correct
    logger.w("=============================== Controller $response ");

    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        getAcceptedOrders();
        // List listdata = response['data'];
        // data.addAll(listdata.map((e) => OrdersModel.fromJson(e)));
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
    update();
  }
//late String deliveryId;
  refrehOrder() {
    getAcceptedOrders( );
  }

  @override
  void onInit() {
    getAcceptedOrders( );
    super.onInit();
  }
}
