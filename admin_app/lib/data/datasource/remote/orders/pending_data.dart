import '../../../../core/class/crud.dart';
import '../../../linkApi.dart';

class OrdersPendingData {
  Crud crud;
  OrdersPendingData(this.crud);
  getData( ) async {
     var response = await crud.postData(AppLink.pendingOrders, { });

    return response.fold((l) => l, (r) => r);

  }

  approveData( String deliveryId ,String usersId , String ordersId) async {
    var response = await crud.postData(AppLink.approveOdrers, {

      'deliveryid':deliveryId ,
      'usersid':usersId,
      'ordersid':ordersId
    });

    return response.fold((l) => l, (r) => r);

  }


}
