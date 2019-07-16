/*
  Create by HaTK
  On 7/16/2019
*/
import 'package:flutter/material.dart';
//import 'package:user/support/widget/NoneExistentAppBar.dart';
import 'package:my_pet/asset/Resource.dart';

class ServicesWidget extends StatefulWidget {
  @override
  ServicesWidgetState createState() => ServicesWidgetState();
}

class ServicesWidgetState extends State<ServicesWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text(
          "My Pet",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 5,
                padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
                decoration: BoxDecoration(
                    image: DecorationImage(image: Assets.FoodBackground),
                    border: Border.all(color: Colors.black38),
                borderRadius: BorderRadius.circular(5.0),),
                child: Center(child: Text("Food"))),
            Container(
              height: MediaQuery.of(context).size.height / 5,
              padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
              decoration: BoxDecoration(
                image: DecorationImage(image: Assets.FoodBackground),
                border: Border.all(color: Colors.black38),
                borderRadius: BorderRadius.circular(5.0),),
              child: Center(child: Text("Skin Care")),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 5,
              padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
              decoration: BoxDecoration(
                image: DecorationImage(image: Assets.FoodBackground),
                border: Border.all(color: Colors.black38),
                borderRadius: BorderRadius.circular(5.0),),
              child: Center(child: Text("Vaccination Schedule")),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
              height: MediaQuery.of(context).size.height / 5,
              decoration: BoxDecoration(
                image: DecorationImage(image: Assets.FoodBackground),
                border: Border.all(color: Colors.black38),
                borderRadius: BorderRadius.circular(5.0),),
              child: Center(child: Text("Something else")),
            )
          ],
        ),
      ),
    );
  }
}
