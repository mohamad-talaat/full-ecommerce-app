import 'package:delivery_app/core/class/crud.dart';
import 'package:delivery_app/data/linkApi.dart';

class OffersData {
  Crud crud;
  OffersData(this.crud);

  offerData() async {
    var response = await crud.postData(AppLink.offers, {});

    return response.fold((l) => l, (r) => r);
  }
}
