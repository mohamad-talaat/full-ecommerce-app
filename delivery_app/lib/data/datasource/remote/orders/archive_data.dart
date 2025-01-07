import 'package:delivery_app/core/class/crud.dart';

import '../../../linkApi.dart';

class OrdersArchiveData {
  Crud crud;
  OrdersArchiveData(this.crud);
  getData(String deliveryId) async {
    var response = await crud.postData(AppLink.archiveOrders, {"id": deliveryId});
    return response.fold((l) => l, (r) => r);
  }
}
