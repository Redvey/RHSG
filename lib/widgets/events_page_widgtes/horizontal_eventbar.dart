import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rhsgrad/consts/data.dart';


class EventBar extends StatelessWidget {
  const EventBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: eventbar.map((item) {
          return Container(
            margin: EdgeInsets.only(right: 8.68),
            width: 130.14,
            height: 51.03,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.25),
              color: Colors.black.withOpacity(0.5),
              image: DecorationImage(
                image: item.img,
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Text(
                item.eventtitle,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
