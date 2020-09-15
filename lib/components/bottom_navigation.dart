import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:nike_app/colors.dart';

class BottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: main_color,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: Row(
          children: [
            Expanded(
                child: Icon(
              LineIcons.home,
              color: Colors.black,
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                  backgroundColor: background_color,
                  child: Icon(
                    LineIcons.circle,
                    color: main_color,
                  ),
                  onPressed: null),
            ),
            Expanded(
                child: Icon(
              LineIcons.user,
              color: Colors.black,
            )),
          ],
        ),
      ),
    );
  }
}
