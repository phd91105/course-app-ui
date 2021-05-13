import 'package:course_app/components/home_appbar.dart';
import 'package:course_app/components/home_body.dart';
import 'package:course_app/components/menu.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: MenuDrawer(),
      appBar: HomeAppBar(
        onPressed: () => scaffoldKey.currentState.openDrawer(),
        title: 'Hi, cháu ông dev 👋',
      ),
      body: Body(),
    );
  }
}
