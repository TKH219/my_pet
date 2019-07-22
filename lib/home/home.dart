/*
  Create by HaTK
  On 7/7/2019
*/

import 'package:flutter/material.dart';
import 'package:my_pet/NavigationWidget.dart';
import 'package:my_pet/home/PetItem.dart';
import 'package:my_pet/asset/Resource.dart';

class Home extends StatefulWidget {
  @override
  HomeWidget createState() => HomeWidget();
}

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
        child: ListView(children: <Widget>[
          GestureDetector(
            onTap: () {
              print("DID TAP THE ITEM");
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
                height: MediaQuery.of(context).size.height / 5,
//                padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
                decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage("Assets.FoodBackground")),
                  border: Border.all(color: Colors.black38),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Center(child: Text("Food"))),
          ),
          GestureDetector(
            onTap: () {
              print("DID TAP THE ITEM");
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
            height: MediaQuery.of(context).size.height / 5,
//              padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
              decoration: BoxDecoration(
                image: DecorationImage(image: Assets.FoodBackground),
                border: Border.all(color: Colors.black38),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Center(child: Text("Skin Care")),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
            height: MediaQuery.of(context).size.height / 5,
//            padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://img.cutenesscdn.com/640/cme/cuteness_data/s3fs-public/diy_blog/Dog-Skin-Care-Basics.jpg")),
              border: Border.all(color: Colors.black38),
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Center(child: Text("Person Hygiene")),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
//            padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
            height: MediaQuery.of(context).size.height / 5,
            decoration: BoxDecoration(
              image: DecorationImage(image: Assets.FoodBackground),
              border: Border.all(color: Colors.black38),
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Center(child: Text("Vaccination Schedule")),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
//            padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
            height: MediaQuery.of(context).size.height / 5,
            decoration: BoxDecoration(
              image: DecorationImage(image: Assets.FoodBackground),
              border: Border.all(color: Colors.black38),
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Center(child: Text("Insemination")),
          )
        ]),
      ),
    );
  }
}
