import 'package:flutter/material.dart';
import 'package:getx/log_in/log_in_controller.dart';
import 'package:get/get.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    LogInController logincontroller = Get.put(LogInController());

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Log in',

          style: TextStyle(
            fontSize: 20,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 100),
            TextFormField(
              controller: logincontroller.namecontroller,
              decoration: InputDecoration(
                hintText: 'Enter your email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(width: 3, color: Colors.deepPurple),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: logincontroller.passwordcontroller,
              decoration: InputDecoration(
                hintText: 'Enter your password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(width: 3, color: Colors.deepPurple),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                logincontroller.login();
              },
              child: Text(
                'Log in',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
