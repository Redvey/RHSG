import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:rhsgrad/consts/pallete.dart';
import 'package:rhsgrad/screens/login_screens/forgotpassword.dart';


class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(430, 932)); // Initialize ScreenUtil

    final screenWidth = ScreenUtil().screenWidth;

    // Calculate button width as a percentage of the screen width
    final buttonWidth = screenWidth * 0.9;

    // Calculate box width based on screen size
    final boxWidth = (screenWidth - ScreenUtil().setWidth(96)) / 4; // 96 = 24 (left padding) + 24 (right padding) + 24 (gap between boxes) + 24 (gap at the ends)

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        backgroundColor: Palette.bgcolor,
        leading:// Back arrow
        Padding(
          padding: const EdgeInsets.only(left: 24,),
          child: InkWell(
            onTap: () {
              Navigator.pop(context, MaterialPageRoute(builder: (context) => ForgotPassword()),);

            },
            child: Icon(
              Iconsax.arrow_circle_left5,
              color: Palette.textcons,
              size: 30,
            ),
          ),
        ),

      ),
      backgroundColor: Palette.bgcolor,
      body: Padding(
        padding: EdgeInsets.only(left: ScreenUtil().setWidth(24), top: ScreenUtil().setHeight(48), right: ScreenUtil().setWidth(24)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: ScreenUtil().setHeight(30)),
            Padding(
              padding: EdgeInsets.only(left: ScreenUtil().setWidth(40)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Enter OTP",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: ScreenUtil().setSp(24),
                    ),
                  ),
                  Text(
                    "An authentication code has been\nsend to your registered mail.",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.normal,
                      color: Palette.textcons,
                      fontSize: ScreenUtil().setSp(16),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(44)),
            // OTP Boxes
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                4,
                    (index) => SizedBox(
                  height: ScreenUtil().setHeight(69),
                  width: boxWidth,
                  child: TextFormField(
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    style: GoogleFonts.poppins(color: Colors.white),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Palette.containercolor, // Set the background color
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(ScreenUtil().setWidth(12)), // Set the border radius using ScreenUtil
                        borderSide: BorderSide(
                          color: Palette.otpstroke, // Set the border color
                          width: ScreenUtil().setWidth(1.0), // Set the border width using ScreenUtil
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(45)),
            // Next button
            ElevatedButton(
              onPressed: () {
                // Add your button action here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Palette.iconix, // Set the button color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(ScreenUtil().setWidth(12)), // Set the border radius using ScreenUtil
                ),
                minimumSize: Size(buttonWidth, ScreenUtil().setHeight(69)), // Set the button size using ScreenUtil
              ),
              child: Text(
                'Continue',
                style: TextStyle(
                  color: Palette.next,
                  fontSize: ScreenUtil().setSp(16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

