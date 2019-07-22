/*
  Create by HaTK
  On 7/9/2019
*/
import 'package:flutter/material.dart';
import 'package:my_pet/petProfile/PetDetail.dart';
import 'package:my_pet/services/Services.dart';
import 'package:my_pet/userProfile/UserProfile.dart';

import 'home/Home.dart';

class NavigationWidget extends StatefulWidget {
  @override
  NavigationState createState() => NavigationState();
}

class NavigationState extends State<NavigationWidget>
    with TickerProviderStateMixin {
  static const int HOME_TAB_INDEX = 0;
  static const int SERVICES_TAB_INDEX = 1;
  static const int PET_TAB_INDEX = 2;
  static const int PROFILE_TAB_INDEX = 3;

  int currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//    switch (currentIndex) {
//      case HOME_TAB_INDEX:
//        Navigator.push(
//            context, MaterialPageRoute(builder: (context) => Home()));
//        break;
//      case PET_TAB_INDEX:
//        Navigator.push(context,
//            MaterialPageRoute(builder: (context) => PetDetail()));
//        break;
//      case SERVICES_TAB_INDEX:
//        Navigator.push(context,
//            MaterialPageRoute(builder: (contexts) => ServicesWidget()));
//        break;
//      case PROFILE_TAB_INDEX:
//        Navigator.push(context,
//            MaterialPageRoute(builder: (context) => UserProfile()));
//        break;
//      default:
//        break;
//    }
  }

//  void selectedTab() {
//    setState(() {
//      currentIndex = index;
//    });
//}

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
      body: Stack(children: <Widget>[
        Offstage(
          child: Home(),
          offstage: currentIndex != HOME_TAB_INDEX,
        ),
        Offstage(
          child: PetDetail(),
          offstage: currentIndex != PET_TAB_INDEX,
        ),
        Offstage(
          child: ServicesWidget(),
          offstage: currentIndex != SERVICES_TAB_INDEX,
        ),
        Offstage(
          child: UserProfile(),
          offstage: currentIndex != PROFILE_TAB_INDEX,
        )
      ]),
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(fontSize: 20.0),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 18.0,
                color: Colors.purpleAccent,
              ),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.purpleAccent, fontSize: 15.0),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.pets, size: 18.0, color: Colors.purpleAccent),
              title: Text(
                "Pet",
                style: TextStyle(color: Colors.purpleAccent, fontSize: 15.0),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.room_service,
                  size: 18.0, color: Colors.purpleAccent),
              title: Text(
                "Services",
                style: TextStyle(color: Colors.purpleAccent, fontSize: 15.0),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.verified_user,
                  size: 18.0, color: Colors.purpleAccent),
              title: Text(
                "User",
                style: TextStyle(color: Colors.purpleAccent, fontSize: 15.0),
              )),
        ],
        currentIndex: currentIndex,
        iconSize: 18.0,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 20.0,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        }
          ),
    );
    }
  }
