import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:rhsgrad/consts/curve_design.dart';

import '../../consts/pallete.dart';
import '../../widgets/loginbox.dart';
import '../login_screens/forgotpassword.dart';


class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(430, 932)); // Initialize ScreenUtil

    return Scaffold(
      backgroundColor: Palette.bgcolor,
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
            // Back Arrow
            Positioned(
              top: 73,
              left: 24,
              child: InkWell(
                onTap: () {

                },
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.start,

                      children: [
                        Icon(
                          Iconsax.arrow_circle_left5,
                          color: Palette.textcons,
                          size: 30,
                        ),
                        SizedBox(width: 12,),
                        Text("Activities",style: GoogleFonts.poppins(
                          color: Palette.hinttext,
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                        ),)
                      ],
                    ),
                    SizedBox(height: 10,),
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
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: ScreenUtil().setWidth(24), top: ScreenUtil().setHeight(153), right: ScreenUtil().setWidth(24)),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    //Notifications boxes
                    Container(
                      width: 382,
                      height: 56,
                      padding: const EdgeInsets.only(top: 10, right: 10, bottom: 10),
                      decoration: ShapeDecoration(
                        color: Color(0xFFFFF9F5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(width: 10),
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Roopam',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                          height: 0,
                                          letterSpacing: 0.25,
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' ',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w900,
                                          height: 0,
                                          letterSpacing: 0.25,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'just donated to swaraswati puja fund',
                                        style: TextStyle(
                                          color: Color(0xFF636363),
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                          letterSpacing: 0.25,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '. \n',
                                        style: TextStyle(
                                          color: Color(0xFF636363),
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w900,
                                          height: 0,
                                          letterSpacing: 0.25,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'You might want to donate too.',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                          letterSpacing: 0.25,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 9,),
                    Container(
                      width: 382,
                      height: 56,
                      padding: const EdgeInsets.only(top: 10, right: 10, bottom: 10),
                      decoration: ShapeDecoration(
                        color: Color(0xFFFFF9F5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(width: 10),
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Roopam',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                          height: 0,
                                          letterSpacing: 0.25,
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' ',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w900,
                                          height: 0,
                                          letterSpacing: 0.25,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'just donated to swaraswati puja fund',
                                        style: TextStyle(
                                          color: Color(0xFF636363),
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                          letterSpacing: 0.25,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '. \n',
                                        style: TextStyle(
                                          color: Color(0xFF636363),
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w900,
                                          height: 0,
                                          letterSpacing: 0.25,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'You might want to donate too.',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                          letterSpacing: 0.25,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 9,),
                    Container(
                      width: 382,
                      height: 56,
                      padding: const EdgeInsets.only(top: 10, right: 10, bottom: 10),
                      decoration: ShapeDecoration(
                        color: Color(0xFFFFF9F5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(width: 10),
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Roopam',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                          height: 0,
                                          letterSpacing: 0.25,
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' ',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w900,
                                          height: 0,
                                          letterSpacing: 0.25,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'just donated to swaraswati puja fund',
                                        style: TextStyle(
                                          color: Color(0xFF636363),
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                          letterSpacing: 0.25,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '. \n',
                                        style: TextStyle(
                                          color: Color(0xFF636363),
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w900,
                                          height: 0,
                                          letterSpacing: 0.25,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'You might want to donate too.',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                          letterSpacing: 0.25,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ),

          ]),);
  }
}