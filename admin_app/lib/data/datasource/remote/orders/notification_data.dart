import 'package:admin_app/core/class/crud.dart';
import 'package:admin_app/data/linkApi.dart';

class NotificationData {
  Crud crud;
  NotificationData(this.crud);
  getData(String orderId) async {
    var response = await crud.postData(AppLink.notification, {"id": orderId});
    return response.fold((l) => l, (r) => r);
  }
}
