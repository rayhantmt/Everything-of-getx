import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx/home/home_controller.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
     HomeController controller = Get.put(HomeController());
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Notificatoin'),
            Obx(() =>  Switch(value: controller.n.value, onChanged: (value) =>controller.change(value) )) ,
          ],
        ),
      ),
    );
  }
}