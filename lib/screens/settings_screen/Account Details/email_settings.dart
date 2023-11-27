import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:rhsgrad/consts/pallete.dart';
import 'package:rhsgrad/screens/settings_screen/Account%20Details/account_details.dart';

import '../../../consts/curve_design.dart';


class EmailSettings extends StatelessWidget {
  const EmailSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.bgcolor,

      body: SingleChildScrollView(
        child: Stack(
          children: [
            CustomPaint(
              painter: SemiCirclePainter(),
              child: Container(
                height: 150, // Set the height to 30
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60,left: 24,right: 24),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => AccountDetails()),
                                  );
                                },
                                child: Icon(
                                  Iconsax.arrow_circle_left5,
                                  color: Palette.desctext,
                                  size: 30,
                                ),
                              ),

                              Text(
                                "Change Email",
                                style: GoogleFonts.poppins(
                                  color: Palette.desctext,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Container(
                            width: 382,
                            height: 1,
                            decoration: ShapeDecoration(
                              color: Palette.buttstroke,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 36,),
                  Icon(Icons.mail,size: 130,color: Palette.textcons),
                  SizedBox(height: 15,),
                  Text("Your Email has been linked to your\n account. You can change it below.",
                    style: GoogleFonts.poppins(
                        color: Palette.desctext,
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                    ),),
                  SizedBox(height: 40,),
                  Container(
                      width: 382,
                      height: 69,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFF0F0F0),
                        ),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(24),topRight: Radius.circular(24)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 22,bottom: 23,left: 14),
                        child: Text("Old Name",
                          style: GoogleFonts.poppins(
                            color: Palette.textcons,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),),
                      )

                  ),
                  Container(
                      width: 382,
                      height: 69,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFF0F0F0),
                        ),
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(24),bottomRight: Radius.circular(24)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20,left: 14,bottom: 12),
                        child: TextField(
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter your new email id', // Set the hint text
                            hintStyle: GoogleFonts.poppins(
                              color: Palette.textcons,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),

                      )

                  ),
                  SizedBox(height: 34,),
                  ElevatedButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => OtpPage()),
                      // );
                      // // Button action
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Palette.iconix,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),


                    ),
                    child: Container(
                      height: 69,
                      width:382 ,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Save Changes',
                          style: GoogleFonts.poppins(
                            color: Palette.bgcolor,
                            fontSize: 16,
                            // Adjust font size as needed
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
