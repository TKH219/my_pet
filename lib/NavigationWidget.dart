/*
Create by HaTK
On 7/9/2019
*/
import 'package:flutter/material.dart';

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

  TabController tabController;
  int currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void switchScreen(int index) {
    setState(() {
      this.currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.purpleAccent,
            ),
            title: Text("")),
        BottomNavigationBarItem(
            icon: Icon(Icons.pets, color: Colors.purpleAccent),
            title: Text("")),
        BottomNavigationBarItem(
            icon: Icon(Icons.verified_user, color: Colors.purpleAccent),
            title: Text("")),
        BottomNavigationBarItem(
            icon: Icon(Icons.room_service, color: Colors.purpleAccent),
            title: Text(""))
      ],
      currentIndex: currentIndex,
      iconSize: 18.0,
      type: BottomNavigationBarType.shifting,
      selectedFontSize: 22.0,
      onTap: null,
    );
  }
}
