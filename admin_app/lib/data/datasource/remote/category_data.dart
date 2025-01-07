


import 'dart:io';

import '../../../core/class/crud.dart';
import '../../../core/services/services.dart';
import '../../linkApi.dart';

class CategoryData {
  late Crud crud;
  CategoryData(this.crud);

    viewCategory() async {
    var response = await crud.postData(AppLink.viewCategory, {});
    return response.fold((l) => l, (r) => r);
  }

 addCategory(String name, String nameAr, File file) async {
    var response = await crud.addRequestWithImageOne(AppLink.addCategory,
        {
      'name': name,
      'namear': nameAr,
     // 'imagename':image
    },
        file   );
    logger.w("Add Category Response");
    return response.fold((l) => l, (r) => r);
  }
  updateCategory(String id , String name, String nameAr, File file) async {
    var response = await crud.addRequestWithImageOne(AppLink.updateCategory,
        {
          'id': id,
          'name': name,
      'namear': nameAr,


        },
        file   );
    logger.w("Update Category Response");
    return response.fold((l) => l, (r) => r);
  }



   deleteCategory(String image, String id) async {
    var response = await crud.postData(AppLink.deleteCategory, {
      "id": id,
      "imagename": image,
    });
    logger.w("Delete Category Response");
    return response.fold((l) => l, (r) => r);
  }
}
