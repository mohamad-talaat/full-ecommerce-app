import 'package:admin_app/core/constant/color.dart';
import 'package:admin_app/view/screen/category.dart';
import 'package:admin_app/view/screen/category_list.dart';
import 'package:admin_app/view/widget/list_card_home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Admin" , style: TextStyle(color: Colors.white),),
        backgroundColor: AppColor.primaryColor,),
      body: ListView(children: [
        GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3 , mainAxisExtent: 150) ,
physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
 CustomeCardInHome(image: "Categories.png", title: "Categories" , onClick: (){
   Get.to(Category());
 },),
CustomeCardInHome(image: "Product.jpg", title: "Product" , onClick: (){},),
CustomeCardInHome(image: "Users.png", title: "Users" , onClick: (){},),
CustomeCardInHome(image: "Orders.png", title: "Orders" , onClick: (){},),
CustomeCardInHome(image: "Report.png", title: "Report" , onClick: (){},),
CustomeCardInHome(image: "Notification.png", title: "Notification" , onClick: (){},)

        ],)
        
        
      ],),

    );
  }
}
