import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:nike_app/colors.dart';
import 'package:nike_app/page_show_background.dart';

class PageShow extends StatelessWidget {
  final String image;
  final String tag;

  const PageShow({Key key, this.image, this.tag}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background_color,
      body: Stack(
        children: [
          PageShowBackground(image: image,tag: tag,),
          Positioned(
            top: 40,
            left: 20,
            width: 50,
            child: Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Center(child: Padding(
                padding: const EdgeInsets.all(0),
                child: IconButton(
                  icon: Icon(Icons.arrow_left, size: 30,),
                  onPressed: ()=> Navigator.of(context).pop(),
                ),
              ),),
            ),
          ),
          Positioned.fill(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(child: SizedBox()),
                Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                      Padding(
                        padding: const EdgeInsets.only(left:30.0),
                        child: Text("Nike Air",style: GoogleFonts.benchNine(color: Colors.white, fontSize: 25),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:30.0),
                        child: Text("AIR JORDAN 1 MID SEC",style: GoogleFonts.benchNine(color: Colors.white, fontSize: 25),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:30.0, top: 20),
                        child: Row(
                          children: [
                            Icon(LineIcons.star, size: 15, color: main_color,),
                            Icon(LineIcons.star, size: 15, color: main_color,),
                            Icon(LineIcons.star, size: 15, color: main_color,),
                            Icon(LineIcons.star, size: 15, color: Colors.grey,),
                            Icon(LineIcons.star, size: 15, color: Colors.grey,)
                          ],

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:30.0, top: 30),
                        child: Text("Size",style: GoogleFonts.benchNine(color: Colors.white, fontSize: 25),),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left:30.0,top: 20),
                          child: Row(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  color: main_color
                                ),
                                child: Center(
                                  child: Text("7",style: GoogleFonts.benchNine(color: background_color, fontSize: 25, ),),
                                ),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    color: Colors.white
                                ),
                                child: Center(
                                  child: Text("8",style: GoogleFonts.benchNine(color: background_color, fontSize: 25, ),),
                                ),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    color: Colors.white
                                ),
                                child: Center(
                                  child: Text("9",style: GoogleFonts.benchNine(color: background_color, fontSize: 25, ),),
                                ),
                              )
                            ],
                          ),
                        ),
                      )  
                        
                ],)
                ),
              ],
            ),
          )
        ],
      ),
     floatingActionButton: Container(
       height: 60,
       width: 100,
       decoration: BoxDecoration(
         color: main_color,
         borderRadius: BorderRadius.all(Radius.circular(20))
       ),
       child: Center(
         child: Text("BUY",style: GoogleFonts.benchNine(fontWeight: FontWeight.w700, fontSize: 20),),
       ),
     ),
    );
  }
}
