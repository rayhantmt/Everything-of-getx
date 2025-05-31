import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/favourite/favourite_controller.dart';

class Fruits extends StatelessWidget {
  const Fruits({super.key});

  @override
  Widget build(BuildContext context) {
FavouriteController controller=Get.put(FavouriteController());

    return Scaffold(
      appBar: AppBar(
        title: Text('Getx controller practice',style: TextStyle(color: Colors.red),),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: controller.fruits.length,
        itemBuilder: (context, index) => ListTile(
          onTap: () {
if(controller.favourite.contains(controller.fruits[index])){
  controller.removefavourite(controller.fruits[index]);
}
else{
  controller.addtofavourite(controller.fruits[index]);
}
          },
        title: Text(controller.fruits[index]),
        trailing: Obx(() =>  Icon(Icons.favorite,color: controller.favourite.contains(controller.fruits[index])? Colors.red: Colors.white)),),
      ));
    
  }
}