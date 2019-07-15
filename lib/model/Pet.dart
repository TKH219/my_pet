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

  Pet(this.name, this.age, this.petID, this.kind, this.vaccinated,
      this.listImage, this.avatar, this.height, this.weight);
}