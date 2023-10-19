import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:rhsgrad/screens/login_screens/loginpage.dart';
import 'package:rhsgrad/screens/login_screens/OTPpage.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rhsgrad/widgets/loginbox.dart';

import '../../consts/pallete.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(430, 932)); // Initialize ScreenUtil

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
              Navigator.pop(context, MaterialPageRoute(builder: (context) => LoginPage()),);

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
                  // Forgot Password?
                  Text(
                    "Forgot password?",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: ScreenUtil().setSp(24),
                    ),
                  ),
                  // Enter your email or phone number. If an account exists, you will receive its activation code.
                  Text(
                    "Enter your email or phone number\nIf an account exists, you will receive its\nactivation code.",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.normal,
                      color: Palette.textcons,
                      fontSize: ScreenUtil().setSp(16),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(76)),
            LoginField(hintText: "Enter username", prefixIcon: Iconsax.profile_circle5),
            SizedBox(height: ScreenUtil().setHeight(27)),
            //Next Button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OtpPage()),
                );
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
                style: TextStyle(
                  color: Palette.next,
                  fontSize: ScreenUtil().setSp(16), // Adjust font size as needed
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
