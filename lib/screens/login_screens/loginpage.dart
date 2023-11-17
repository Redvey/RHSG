import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rhsgrad/screens/login_screens/forgotpassword.dart';
import 'package:rhsgrad/consts/pallete.dart';
import 'package:iconsax/iconsax.dart';
import 'package:rhsgrad/widgets/loginbox.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(430, 932)); // Initialize ScreenUtil

    return Scaffold(
      backgroundColor: Palette.bgcolor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(48),
        child: AppBar(
          elevation: 0,
          centerTitle: false,
          backgroundColor: Palette.bgcolor,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: InkWell(
              onTap: () {
                // Action on tap
              },
              child: Icon(
                Iconsax.arrow_circle_left5,
                color: Palette.textcons,
                size: 30,
              ),
            ),
          ),
        ),
      ),
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
          ],
        ),
      ),
    );

  }
}
