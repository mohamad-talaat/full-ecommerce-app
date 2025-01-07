import '../../../../core/class/crud.dart';
import '../../../linkApi.dart';

class OrdersAcceptedData {
  Crud crud;
  OrdersAcceptedData(this.crud);
  getData(String deliveryId) async {
     var response = await crud.postData(AppLink.acceptedOrders, {"id": deliveryId});

    return response.fold((l) => l, (r) => r);

  }
  doneDelivery(String usersid  , String ordersid) async {
    var response = await crud.postData(AppLink.doneOrders, {"usersid": usersid ,
      "ordersid":ordersid});

    return response.fold((l) => l, (r) => r);

  }


}
