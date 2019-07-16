/*
  Create by HaTK
  On 7/7/2019
*/

import 'package:flutter/material.dart';
import 'package:my_pet/NavigationWidget.dart';
import 'package:my_pet/home/PetItem.dart';

class Home extends StatefulWidget {
  @override
  HomeWidget createState() => HomeWidget();
}

class HomeWidget extends State<Home> with TickerProviderStateMixin {

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
        padding: EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 8.0),
        child: Column(
          children: <Widget>[
            PetItem(),
            PetItem(),
            PetItem(),
          ],
        ),
      ),
      bottomNavigationBar: NavigationWidget(),
    );
  }
}
