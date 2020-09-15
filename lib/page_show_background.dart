import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_app/colors.dart';

class PageShowBackground extends StatelessWidget {
  final String image;
  final String tag;

  const PageShowBackground({Key key, this.image, this.tag}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        final height = constraint.maxHeight;
        final width = constraint.maxWidth;

        return Stack(
          children: <Widget>[

            Positioned(
                top: 100,
                child: Text("Nike Airmax", style: GoogleFonts.benchNine(color: Colors.white, fontSize: 80, fontWeight: FontWeight.w700))),
            Positioned(
              left: (height/3 - width/2.9),
              bottom: height * 0.25,
              child: Container(
                height: height,
                width: height/2,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: main_color
                ),
                child: Hero(
                  tag: tag,
                    child: Image.asset(image)),
              ),
            ),

          ],
        );
      },
    );
  }
}