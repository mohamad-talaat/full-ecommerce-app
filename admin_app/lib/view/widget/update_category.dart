import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../controller/category_controller.dart';
import '../screen/category_list.dart';

class UpdateCategoryDialog extends StatefulWidget {
  final catid ;
  late final String name ;
  late final String namear ;
  late File image;
  UpdateCategoryDialog({required this.catid, required this.name,required this.namear, required this.image});
  @override
  State<UpdateCategoryDialog> createState() => _UpdateCategoryDialogState();
}

class _UpdateCategoryDialogState extends State<UpdateCategoryDialog> {
  late TextEditingController nameController = TextEditingController();

  late TextEditingController nameArController = TextEditingController();

  final CategoryController controller = Get.find();

  File? image;

  Future<void> pickImage() async {
    final status = await Permission.camera.request();

    if (status.isGranted) {
      final picker = ImagePicker();
      final pickedFile = await picker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        image = File(pickedFile.path);
      }
    } else {
      Get.snackbar('خطأ', 'يرجى منح إذن الوصول إلى الكاميرا');
    }
  }
@override
void initState() { super.initState(); nameController = TextEditingController(text: widget.name); nameArController =
    TextEditingController(text: widget.namear);
    image = widget.image; }
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Update New Category'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: nameController,
            decoration: const InputDecoration(labelText: 'English Name'),
          ),
          TextField(
            controller: nameArController,
            decoration: const InputDecoration(labelText: 'Arabic Name'),
          ),
          ElevatedButton(
            onPressed: () async {
              await pickImage();
            },
            child: const Text('Choose Image'),
          ),
        ],
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            if (image != null) {
              controller.updateData(catId ,nameController.text, nameArController.text, image!  );
              Get.back();
            } else {
              Get.snackbar('خطأ', 'يرجى اختيار صورة');
            }
          },
          child: const Text('Update'),
        ),
        ElevatedButton(
          onPressed: () {
            Get.back();
          },
          child: const Text('Exit'),
        ),
      ],
    );
  }
}
