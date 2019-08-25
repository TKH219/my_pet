/*
  Create by HaTK
  On 7/28/2019
*/

import 'package:flutter/material.dart';
import 'package:my_pet/model/Pet.dart';
import 'package:my_pet/widget/pet/PetItem.dart';

class Pets extends StatefulWidget {
  @override
  PetsState createState() => PetsState();
}

class PetsState extends State<Pets> {
  List<Pet> listPet = [
    Pet(
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
        "https://cdn.editorchoice.com/wp-content/uploads/2019/06/dogtilt.jpg",
        0.8,
        5.7,
        true),
    Pet(
        "Nigger",
        3,
        "1",
        "Phu Quoc dog",
        true,
        [
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhoWEA5F3Xrwg14TRKv20W0hk8VqyYtRPcdIF5HbF9DyYjXSsbAg",
          "https://dogily.vn/wp-content/uploads/2019/02/hinh-anh-cho-phu-quoc-dogily-petshop-10.jpg",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqX6jQoMOkN3fMi-OSwKOCCgFjwyw3pF070ID4p9z47QxisDPd",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7_BE-cszmVF1tmXEXcfTZ6typIr0V6s6NcUcLXcPJgCzq3SaO"
        ],
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSympkVrlM_Rg5yClfsdKLPwitlHW_3XtB6KE5rdZSFs6Ly0Xvk",
        0.8,
        5.7,
        true),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(itemCount: listPet.length,
    itemBuilder: (context, index) {
      print('THIS IS PET NAME' + listPet[index].name.toString());
      return PetItem(listPet[index]);
    },);
  }
}
