import 'dart:io';
import 'package:admin_app/core/functions/handlingDataController.dart';
import 'package:admin_app/core/functions/upload_image.dart';
import 'package:admin_app/data/datasource/remote/category_data.dart';
import 'package:admin_app/data/datasource/remote/pagescall/pagename.dart';
import 'package:admin_app/data/model/categoriesmodel.dart';
import 'package:get/get.dart';
import '../core/class/statusrequest.dart';
import '../core/services/services.dart';
import '../view/screen/category_list.dart';

class CategoryController extends GetxController {
  final CategoryData categoryData = CategoryData(Get.find());
  List<CategoriesModel> dataModel = [];
  late StatusRequest statusRequest;
File? file ;
  @override
  void onInit() {
    super.onInit();
    getData();
  }
getImage()async{
    file = await pickImage() as File?;

}
  Future<void> getData() async {
    statusRequest = StatusRequest.loading;
    update();

    var response = await categoryData.viewCategory();
    logger.w("=============================== Controller $response ");
    statusRequest = handlingData(response);

    if (statusRequest == StatusRequest.success) {
      if (response["status"] == "success") {
        dataModel.clear();
        dataModel.addAll((response['data'] as List)
            .map((e) => CategoriesModel.fromJson(e))
            .toList());
      }
    } else {
      statusRequest = StatusRequest.failure;
    }

    update();
  }

  Future<void> deleteData(  file, String id) async {
    statusRequest = StatusRequest.loading;
    update();

    var response = await categoryData.deleteCategory(file, id);
    logger.w("=============================== Controller $response ");
    statusRequest = handlingData(response);

    if (statusRequest == StatusRequest.success) {
      if (response["status"] == "success") {
        dataModel.removeWhere((element) => element.categoriesId == id);
        logger.w("Category deleted successfully");
        update();
      } else {
        statusRequest = StatusRequest.failure;
        logger.w("Failed to delete category: ${response["message"] ??
            "Unknown error"}");
      }
    } else {
      statusRequest = StatusRequest.failure;
      logger.w("Failed to delete category due to request handling");
    }

    update();
  }


  Future<void> addData(String name, String nameAr, File file) async {
    statusRequest = StatusRequest.loading;
    update();

    var response = await categoryData.addCategory(name, nameAr, file);
    logger.w("Controller Response: $response");

    statusRequest = handlingData(response);

    if (statusRequest == StatusRequest.success) {
      if (response["status"] == "success") {
        getData();
      }
    } else {
      statusRequest = StatusRequest.failure;
    }

    update();
  }

  Future<void> updateData(String id , String name, String nameAr, File file) async {
    statusRequest = StatusRequest.loading;
    update();

    var response = await categoryData.updateCategory( catId,name, nameAr, file);
    logger.w("Controller Response: $response");

    statusRequest = handlingData(response);

    if (statusRequest == StatusRequest.success) {
      if (response["status"] == "success") {
        getData();
      }
    } else {
      statusRequest = StatusRequest.failure;
    }

    update();
  }




}