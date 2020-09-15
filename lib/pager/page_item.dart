import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:nike_app/colors.dart';
import 'package:nike_app/page_show.dart';

class PagerItem extends StatelessWidget {
  final String image;
  final String tag;

  const PagerItem({Key key, this.image, this.tag}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
            children: [

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: SizedBox()),
                      Expanded(child: SizedBox()),
                      Expanded(child: SizedBox()),

                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "Nike's",
                          style:
                              GoogleFonts.benchNine(color: Colors.grey, fontSize: 60, fontWeight: FontWeight.bold, letterSpacing: 0),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(child: SizedBox()),
                          Container(
                            height: 80,
                            width: 90,
                            decoration: BoxDecoration(
                              color: main_color,
                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(50), topLeft: Radius.circular(50))
                            ),
                            child: Center(
                              child: Icon(Icons.add, color: background_color,size: 40,),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Positioned.fill(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 50,),
                      Padding(
                        padding: const EdgeInsets.only(left:30.0),
                        child: Text("Nike Air",style: GoogleFonts.benchNine(color: Colors.black, fontSize: 15),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:30.0),
                        child: Text("AIR JORDAN 100",style: GoogleFonts.benchNine(color: Colors.black, fontSize: 28, fontWeight: FontWeight.w700),),
                      ),
                      GestureDetector(
                        onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=> PageShow(image: image, tag: tag,))),
                        child: Hero(
                            tag: tag,
                            child: Image.asset(image)
                        ),
                      ),
                      Expanded(child: SizedBox())

                    ],
                  )
              ),
            ],
          ),
      ),
    );
  }
}
