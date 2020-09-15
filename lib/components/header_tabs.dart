import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors.dart';

class HeaderTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        child: Row(
          children: [
            Text(
              "Basketball",
              style: GoogleFonts.benchNine(
                color: main_color,
                fontSize: 22,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              "Running",
              style: GoogleFonts.benchNine(
                color: Colors.grey,
                fontSize: 22,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              "Training",
              style: GoogleFonts.benchNine(
                color: Colors.grey,
                fontSize: 22,
              ),
            )
          ],
        ),
      ),
    );
  }
}
