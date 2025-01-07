import 'package:admin_app/controller/category_controller.dart';
import 'package:admin_app/view/screen/category_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widget/add_category.dart';

class Category extends StatelessWidget {
  Category({super.key});
  final CategoryController controller = Get.put(CategoryController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CategoryController>(
      builder: (_) => Scaffold( floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.put(CategoryController());
            Get.dialog(AddCategoryDialog());
          },
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          title: Text("Category Handling"),
        ),
        body: Column(
          children: [
            CategoriesList(),
          ],
        ),
      ),
    );
  }
}
