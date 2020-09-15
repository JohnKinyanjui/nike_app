import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'file:///C:/Users/johnk/AndroidStudioProjects/nike_app/lib/components/bottom_navigation.dart';
import 'package:nike_app/colors.dart';
import 'file:///C:/Users/johnk/AndroidStudioProjects/nike_app/lib/components/header_tabs.dart';
import 'package:nike_app/pager/pager.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background_color,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Container(
            height: 40,
            width: 40,
            child: Image.asset("assets/images/white_logo.png")),
        actions: [
          Icon(
            LineIcons.navicon,
            color: Colors.white,
            size: 25,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            LineIcons.shopping_cart,
            color: Colors.white,
            size: 25,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Column(
        children: [
          HeaderTabs(),
          Expanded(child: Pager()),
          SizedBox(
            height: 100,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
