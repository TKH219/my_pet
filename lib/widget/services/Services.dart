/*
  Create by HaTK
  On 7/16/2019
*/
import 'package:flutter/material.dart';

//import 'package:user/support/widget/NoneExistentAppBar.dart';
import 'package:my_pet/asset/Resource.dart';
import 'package:my_pet/model/Pet.dart';
import 'package:my_pet/widget/pet/PetItem.dart';

Pet _pet = Pet(
    "Noob",
    2,
    "1",
    "Phu Quoc dog",
    true,
    [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhoWEA5F3Xrwg14TRKv20W0hk8VqyYtRPcdIF5HbF9DyYjXSsbAg",
      "https://dogily.vn/wp-content/uploads/2019/02/hinh-anh-cho-phu-quoc-dogily-petshop-10.jpg",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqX6jQoMOkN3fMi-OSwKOCCgFjwyw3pF070ID4p9z47QxisDPd",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7_BE-cszmVF1tmXEXcfTZ6typIr0V6s6NcUcLXcPJgCzq3SaO"
    ],
    "https://kenh14cdn.com/zoom/700_438/2017/vi-sao-cho-phu-quoc-co-gia-hang-tram-trieu-dong-11-1491210716454-13-0-374-699-crop-1491215508807.jpg",
    0.8,
    5.7,
    true);

class ServicesWidget extends StatefulWidget {
//  Pet pet = _pet;
//  ServicesWidget(this.pet);
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
            PetItem(_pet),
            PetItem(_pet),
            PetItem(_pet),
          ],
        ),
      ),
    );
  }
}
