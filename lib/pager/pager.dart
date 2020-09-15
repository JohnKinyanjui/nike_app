import 'package:flutter/material.dart';
import 'package:nike_app/pager/page_item.dart';

class Pager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: PageController(viewportFraction: 0.8),
      children: [
        PagerItem(image: "assets/images/nike_1.png",tag: "g1",),
        PagerItem(image: "assets/images/nike_3.png",tag: "g2",),

      ],
    );
  }
}
