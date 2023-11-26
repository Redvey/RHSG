import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rhsgrad/consts/data.dart';
import 'package:rhsgrad/consts/pallete.dart';
import 'package:rhsgrad/widgets/custom_appbar.dart';
import 'package:rhsgrad/widgets/events_page_widgtes/horizontal_eventbar.dart';

import '../../consts/curve_design.dart';
import 'donate_page.dart';

const double fem = 1.0;
const double ffem = 1.0;

class EventsPage extends StatelessWidget {
  const EventsPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // CustomPaint widget to draw the modified semi-circle
          CustomPaint(
            painter: SemiCirclePainter(),
            child: Container(
              height: 150, // Set the height to 30
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 52),
            child: Column(
              children: [
                CustomAppBar(),
                SizedBox(height: 27,),
                //Horizontal Scrollbar
                EventBar(),
                SizedBox(height: 40.97,),
                //Searbox
                SizedBox(
                  width: 382,
                  height: 56,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search All Events',
                      hintStyle: GoogleFonts.poppins(),
                      fillColor: Palette.searchboxcolor,
                      filled: true,
                      contentPadding: EdgeInsets.symmetric(horizontal: 16),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      prefixIcon: Image.asset(
                        'assets/Vector.png',
                        width: 18,
                        height: 18,
                      ),
                      prefixIconConstraints: BoxConstraints(minWidth: 40, minHeight: 20),
                    ),
                    style: TextStyle(fontSize: 16), // Adjust font size if needed
                    keyboardType: TextInputType.text, // Set keyboard type if needed
                    maxLines: 1, // Set the maximum number of lines if needed
                    // Add more properties as required
                    // Adjust and customize as per your project's needs
                    // Example: any other desired TextField properties
                  ),
                ),
                SizedBox(height: 25,),

                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Wrap(
                    children: events.map((event) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: Palette.containercolor,
                        ),
                        width: 382,
                        height: 393,
                        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 200, // Adjust height as needed for your image
                              decoration: BoxDecoration(
                                color: Colors.blueGrey, // Placeholder for image or actual image widget
                                borderRadius: BorderRadius.circular(24),
                                image: DecorationImage(
                                  image: event.img,
                                  fit: BoxFit.cover,
                                ),
                              ),

                            ),
                            const SizedBox(height: 23),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      event.events,
                                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 16),
                                    Column( crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          event.date,
                                          style:  GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500,color: Palette.eventspagetext),
                                        ),
                                        SizedBox(height: 5,),
                                        Text(
                                          'Time: ${event.time}',
                                          style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500,color: Palette.eventspagetext),
                                        ),
                                        SizedBox(height: 5,),
                                        Text(
                                          'VENUE: ${event.venue}',
                                          style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500,color: Palette.eventspagetext),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => DonatePage()),
                                    );
                                  },
                                  child: Container(
                                    width: 88,
                                    height: 44.21,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF5ECC4F), // Green color
                                      borderRadius: BorderRadius.circular(10.11), // Rounded corners
                                    ),
                                    child: Center(
                                      child: Text(
                                        'DONATE',
                                        style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400,
                                          color: Palette.appbartext, // Text color

                                        ),
                                      ),
                                    ),
                                  ),
                                )


                              ],
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
