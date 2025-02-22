import 'package:delivery_app/core/class/crud.dart';
import 'package:delivery_app/data/linkApi.dart';

class ResetPasswordData {
  late Crud crud;
  ResetPasswordData(this.crud);
  postData(String email, String password) async {
    var response = await crud.postData(AppLink.LinkResetPassword, {
      "email": email,
      "password": password,
    });

    return response.fold((l) => l, (r) => r);
  }
}
