import 'dart:io';

import 'package:admin_app/core/functions/upload_image.dart';
import 'package:admin_app/view/widget/update_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:admin_app/controller/category_controller.dart';
import '../../core/constant/color.dart';
import '../../core/functions/translateddatabase.dart';
import '../../data/linkApi.dart';
import '../../data/model/categoriesmodel.dart';
String catId = "";
class CategoriesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CategoryController>(
      builder: (controller) => Expanded(
        child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 10),
          separatorBuilder: (context, index) => const SizedBox(height: 10),
          itemCount: controller.dataModel.length,
          itemBuilder: (context, index) {

            final categoryModel = controller.dataModel[index];
            catId = categoryModel.categoriesId!  ;

            return CustomeCardInCategory(
              categoryModel: categoryModel,
              deleteCategory: () {
                controller.deleteData(categoryModel.categoriesImage!, categoryModel.categoriesId!);
              },
              updateCategory: () {

                     Get.to(UpdateCategoryDialog( catid: categoryModel.categoriesId!, name: categoryModel.categoriesName!,
                  namear: categoryModel.categoriesNameAr!, image: File(categoryModel.categoriesImage!)) );
                //controller.updateData(categoryModel.categoriesName!  ,categoryModel.categoriesNameAr!,
                // File(categoryModel.categoriesImage!));
                },
            );
          },
        ),
      ),
    );
  }
}

class CustomeCardInCategory extends StatelessWidget {
  final CategoriesModel categoryModel;
  final void Function()? updateCategory;
  final void Function()? deleteCategory;

  CustomeCardInCategory({
    super.key,
    required this.updateCategory,
    required this.deleteCategory,
    required this.categoryModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5),
      height: 120,
      color: Colors.lightGreen,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                displayImageType("${AppLink.imagestCategories}/${categoryModel.categoriesImage}"),
                Text(
                  "${translateDatabase(categoryModel.categoriesNameAr, categoryModel.categoriesName)}",
                  style: const TextStyle(
                    fontSize: 18,
                    color: AppColor.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          IconButton(
            onPressed: updateCategory,
            icon: Icon(Icons.edit, color: Colors.blue, size: 35),
          ),
          IconButton(
            onPressed: deleteCategory,
            icon: Icon(Icons.delete, color: Colors.red, size: 35),
          ),
        ],
      ),
    );
  }
 

}
