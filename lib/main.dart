import 'package:flutter/material.dart';
import 'package:getx/log_in/log_in_view.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      home: login(),
    );
  }
}
