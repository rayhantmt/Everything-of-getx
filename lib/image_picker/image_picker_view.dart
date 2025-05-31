import 'dart:io';

import 'package:flutter/material.dart';
import 'package:getx/image_picker/image_picker_controller.dart';
import 'package:get/get.dart';

class Imagepicker extends StatelessWidget {
  const Imagepicker({super.key});

  @override
  Widget build(BuildContext context) {
    ImagePickerController controller = Get.put(ImagePickerController());

    return Scaffold(
      appBar: AppBar(
        title: Text('Pick  image', style: TextStyle(color: Colors.red)),
        centerTitle: true,
      ),
      body: Obx(
        () => Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Center(
             child: CircleAvatar(
               radius: 90,
               backgroundImage: controller.imagepth.value.isEmpty
                   ? NetworkImage('https://picsum.photos/536/354')
                   : FileImage(File(controller.imagepth.value)),
             ),
           ),


            SizedBox(height: 20),
            TextButton(
              onPressed: () => controller.pickimage(),
              child: Text('Pick Image'),
            ),
          ],
        ),
      ),
    );
  }
}
