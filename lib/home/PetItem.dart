/*
Create by HaTK
On 7/15/2019
*/

import 'package:flutter/material.dart';
import 'package:my_pet/home/Home.dart';

class PetItem extends StatefulWidget {
  @override
  PetItemWidget createState() => PetItemWidget();
}

class PetItemWidget extends State<PetItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      margin: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
      child: Container(
        height: 80.0,
        child: Row(
          children: <Widget>[
            Image.network(
              'https://www.petmd.com/sites/default/files/Acute-Dog-Diarrhea-47066074.jpg',
              fit: BoxFit.fill,
            ),
            Column(
              children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                        margin: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
                        child: Text(
                          'My dog',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
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
                          'Age: 3 months',
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
                      Text('Vaccinated: YES',
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

                      Text('Height: 4.5 kg',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 14.0,
                          )),
                      Text('Weight: 0.3 m',
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
