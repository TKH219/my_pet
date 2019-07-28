/*
  Create by HaTK
  On 7/15/2019
*/

import 'package:flutter/material.dart';
import 'package:my_pet/model/Pet.dart';
import 'package:my_pet/asset/Resource.dart' as Resouces;
class PetItem extends StatefulWidget {
  Pet pet;
  PetItem(pet);
  @override
  PetItemWidget createState() => PetItemWidget();
}

class PetItemWidget extends State<PetItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      margin: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
      child: Container(
        height: MediaQuery.of(context).size.height / 6,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
//            widget.pet.avatar.isEmpty
            Image.asset('Resouces.Assets.DogImageDefault'),
//            : Image.network(
//              widget.pet.avatar,
//              fit: BoxFit.fill,
//              width: MediaQuery.of(context).size.width / 4,
//            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
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
                        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
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
                Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                  padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(widget.pet.vaccinated ? 'Vaccinated: YES' : 'Vaccinated: NO',
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
                  decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                  padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Height: ' + widget.pet.height.toString() + ' m',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 14.0,
                          )),
                      Text('Weight: ' + widget.pet.weight.toString() + ' kg',
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
            )
          ],
        ),
      ),
    );
  }
}
