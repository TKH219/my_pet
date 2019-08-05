/*
Create by HaTK
On 7/12/2019
*/

import 'dart:core';

class Pet {
  String name;
  int age;
  String petID;
  String kind;
  bool vaccinated;
  List<String> listImage;
  String avatar;
  double height;
  double weight;
  bool throughbred;

  Pet(
      String name,
      int age,
      String petID,
      String kind,
      bool vaccinated,
      List<String> listImage,
      String avatar,
      double height,
      double weight,
      bool throughbred) {
    this.avatar = avatar;
    this.weight = weight;
    this.height = height;
    this.throughbred = throughbred;
    this.listImage = listImage;
    this.vaccinated = vaccinated;
    this.kind = kind;
    this.petID = petID;
    this.age = age;
    this.name = name;
  }
}
