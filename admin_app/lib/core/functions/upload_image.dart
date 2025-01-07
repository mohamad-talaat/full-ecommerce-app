import 'dart:io';
import 'package:file_picker/file_picker.dart';
 import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
 import 'package:get/get.dart';

//// الطريقتين بيعملوا نفس الحاجه اللي هو بيشوفوا الصوره من اي نوع وبيجبوها
////////////////////////////// 1/ way(My sol.) /////////////////////////////////

///بتجيب الصوره من علي الجهاز
Future<void> pickImage() async {
  final status = await Permission.camera.request();
  File? image;
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


/// بتشتغل كدا.. هترابها بالباث بتاع الصورة :  displayImage("${AppLink.imagestCategories}/${categoryModel.categoriesImage}"),
  displayImageType(String url) {
  if (url.endsWith('.svg')) {
    return SvgPicture.network(
      url,
      height: 70,
      placeholderBuilder: (BuildContext context) => Container(
        padding: const EdgeInsets.all(8.0),
        child: const CircularProgressIndicator(),
      ),

    );
  } else {
    return Image.network(
      url,
      height: 70,
      errorBuilder: (context, error, stackTrace) {
        return Icon(Icons.error);
      },
    );
  }
}

//////////////////////////// another Solution(wael sol.) /////////////////
// imageUploadCamera() async { //throw camera
//
// PickedFile? file = await ImagePicker()
//     .getImage(source: ImageSource.camera, imageQuality: 90);
// if (file == null) {
// return File(file!.path);
// } else {
//
// return null;}}
//
// fileUploadGallery([isSvg = false]) async { //choose file from device and select Type of image if SVG or NOT
//
// FilePickerResult? result = await FilePicker.platform.pickFiles( type: FileType.custom,
// allowedExtensions: isSvg? ["svg", "SVG"] : ["png", "PNG", "jpg", "jpeg", "gif"]);
// if (result == null) {
// return File(result!.files.single.path!);
// } else {
//
// return null;}}