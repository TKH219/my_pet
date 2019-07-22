/*
  Create by HaTK
  On 7/16/2019
*/
import 'package:flutter/material.dart';
//import 'package:user/support/widget/NoneExistentAppBar.dart';
import 'package:my_pet/asset/Resource.dart';
import 'package:my_pet/home/PetItem.dart';

class ServicesWidget extends StatefulWidget {
  @override
  ServicesWidgetState createState() => ServicesWidgetState();
}

class ServicesWidgetState extends State<ServicesWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
