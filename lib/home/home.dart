/*
Create by HaTK
On 7/7/2019
*/

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  HomeWidget createState() => HomeWidget();
}

class HomeWidget extends State<Home> with TickerProviderStateMixin {
  static const int HOME_TAB_INDEX = 0;
  static const int SERVICES_TAB_INDEX = 1;
  static const int PET_TAB_INDEX = 2;
  static const int PROFILE_TAB_INDEX = 3;

  TabController tabController;
  int curentTabIndex = 0;

  Widget topBar() {
    return Material(
        color: Colors.deepPurpleAccent,
        child: TabBar(
          controller: tabController,
          tabs: <Widget>[
            Tab(
              child: Text(
                "Home",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 15.0),
              ),
            ),
            Tab(
              child: Text(
                "Services",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 15.0),
              ),
            ),
            Tab(
              child: Text(
                "My Pet",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 15.0),
              ),
            ),
            Tab(
                child: Text(
              "Profile",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 15.0),
            ))
          ],
        ));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
    tabController.addListener(() {
      setState(() {
        curentTabIndex =tabController.index;

      });
    });
  }

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
      body: Column(
        children: <Widget>[
          topBar(),
        ],
      ),
    );
  }
}
