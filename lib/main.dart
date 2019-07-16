/*
  Create by HaTK
  On 7/16/2019
*/
import 'package:flutter/material.dart';
import 'package:my_pet/NavigationWidget.dart';
import 'package:my_pet/home/Home.dart';
import 'package:my_pet/services/Services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ServicesWidget(),
    );
  }
}