/*
  Create by HaTK
  On 7/7/2019
*/

import 'package:flutter/material.dart';
import 'package:my_pet/NavigationWidget.dart';
import 'package:my_pet/widget/pet/PetItem.dart';
import 'package:my_pet/asset/Resource.dart';

class Home extends StatefulWidget {
  @override
  HomeWidget createState() => HomeWidget();
}

List<String> services = [
  "Food",
  "Skin Care",
  "Person Hygiene",
  "Vaccination Schedule",
  "Insemination"
];

class HomeWidget extends State<Home> with TickerProviderStateMixin {
  Widget serviceItem(String serviceName) {
    return ListView(
      children: <Widget>[],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder: (context, index) {
                return Card(child: Text(services[index]));
              })),
    );
  }
}
