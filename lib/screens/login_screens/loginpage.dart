import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rhsgrad/consts/curve_design.dart';
import 'package:rhsgrad/screens/login_screens/forgotpassword.dart';
import 'package:rhsgrad/consts/pallete.dart';
import 'package:iconsax/iconsax.dart';
import 'package:rhsgrad/widgets/loginbox.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key});

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
            Padding(
        padding: EdgeInsets.only(left: ScreenUtil().setWidth(24), top: ScreenUtil().setHeight(153), right: ScreenUtil().setWidth(24)),
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
                    "Let’s Sign You in",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: ScreenUtil().setSp(24),
                    ),
                  ),
                  Text(
                    "we have missed you",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.normal,
                      color: Palette.desctext,
                      fontSize: ScreenUtil().setSp(16),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(76)),
            LoginField(hintText: "Enter username", prefixIcon: Iconsax.profile_circle5),
            SizedBox(height: ScreenUtil().setHeight(27)),
            LoginField(hintText: "Password", prefixIcon: Icons.lock, showPasswordSuffix: true),
            SizedBox(height: ScreenUtil().setHeight(37)),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPassword()),);
              },
              child: Text(
                "Forgot Password?",
                style: GoogleFonts.poppins(
                  fontSize: ScreenUtil().setSp(16),
                  fontWeight: FontWeight.normal,
                  color: Palette.iconix,
                ),
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(27)),
            // Next Button
            ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => OtpPage()),
                // );
                // Button action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Palette.iconix,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(ScreenUtil().setWidth(12)),
                ),
                minimumSize: Size(
                  ScreenUtil().setWidth(382), // Replace buttonWidth with your desired width
                  ScreenUtil().setHeight(69), // Adjust the height as needed
                ),
              ),
              child: Text(
                'Next',
                style: GoogleFonts.poppins(
                  color: Palette.bgcolor,
                  fontSize: ScreenUtil().setSp(16), // Adjust font size as needed
                ),
              ),
            ),

          ],
        ),
      ),
            // Back Arrow
            Positioned(
              top: 73,
              left: 24,
              child: InkWell(
                onTap: () {

                },
                child: Icon(
                  Iconsax.arrow_circle_left5,
                  color: Palette.textcons,
                  size: 30,
                ),
              ),
            ),
    ]),);
  }
}
