/*
  Create by HaTK
  On 7/15/2019
*/

import 'package:flutter/material.dart';
import 'package:my_pet/model/Pet.dart';
import 'package:my_pet/asset/Resource.dart' as Resources;
import 'package:my_pet/widget/pet/PetDetail.dart';

class PetItem extends StatefulWidget {
  Pet pet;

  PetItem(this.pet);

  @override
  PetItemWidget createState() => PetItemWidget();
}

class PetItemWidget extends State<PetItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      margin: EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 0.0),
      child: GestureDetector(
        onTap: () {
          print("This is a pet with name " + widget.pet.name);
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => PetDetail()));
        },
        child: Container(
          height: 120.0,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: widget.pet.avatar.isEmpty
                          ? Image.asset(
                              'Resources.Assets.DogImageDefault',
                            )
                          : NetworkImage(
                              widget.pet.avatar,
                            ),
                    )),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Row(

                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black)),
                              margin: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
                              child: Text(
                                widget.pet.name,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17.0,
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black)),
                              margin: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
                              child: Text(
                                'Age: ' + widget.pet.age.toString() + 'months',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontSize: 14.0,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration:
                            BoxDecoration(border: Border.all(color: Colors.black)),
                        padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                                widget.pet.vaccinated
                                    ? 'Vaccinated: YES'
                                    : 'Vaccinated: NO',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontSize: 12.0,
                                )),
                            GestureDetector(
//                        onTap: Navigator.push(context, MaterialPageRoute(builder: (context) => Home())),
                              child: Text(
                                'Calendar Vaccinated',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.blueAccent,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration:
                            BoxDecoration(border: Border.all(color: Colors.black)),
                        padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('Height: ' + widget.pet.height.toString() + 'm',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontSize: 14.0,
                                )),
                            Text('Weight: ' + widget.pet.weight.toString() + 'kg',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontSize: 14.0,
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
