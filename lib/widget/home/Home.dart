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

  Widget homeItem(String name) {
    return Card(
        margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
        child: GestureDetector(
          onTap: (){
            print("Did tap the grid item");
          },
          child: Container(
            decoration: BoxDecoration(
                color: Colors.purpleAccent,
                borderRadius: BorderRadius.all(Radius.circular(5.0))),
            child: Center(
                child: Text(
                  name,
                  maxLines: 1,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                )),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
              itemCount: services.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return homeItem(services[index]);
              })),
    );
  }
}
