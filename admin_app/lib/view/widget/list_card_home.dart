import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomeCardInHome extends StatelessWidget {
final  void Function()? onClick;
final String image ;
final String title;
  const CustomeCardInHome({super.key, required this.onClick, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: onClick,
      child: Card(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage("assets/images/$image"), height: 100, fit: BoxFit.contain,),
          Text("$title")

        ],),),
    );
  }
}
