import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:rhsgrad/consts/pallete.dart';
import 'package:rhsgrad/screens/login_screens/forgotpassword.dart';

class OTPDigitFormField extends StatelessWidget {
  final TextEditingController controller;

  const OTPDigitFormField({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = ScreenUtil().screenWidth;
    final boxWidth = (screenWidth - ScreenUtil().setWidth(96)) / 4;

    return SizedBox(
      height: ScreenUtil().setHeight(69),
      width: boxWidth,
      child: TextFormField(
        controller: controller,
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        style: GoogleFonts.poppins(color: Colors.black),
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        decoration: InputDecoration(
          filled: true,
          fillColor: Palette.containercolor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(ScreenUtil().setWidth(12)),
            borderSide: BorderSide(
              color: Palette.otpstroke,
              width: ScreenUtil().setWidth(1 / 2),
            ),
          ),
        ),
      ),
    );
  }
}

class OtpPage extends StatelessWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = ScreenUtil().screenWidth;
    ScreenUtil.init(context, designSize: Size(430, 932));

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        backgroundColor: Palette.bgcolor,
        leading: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: InkWell(
            onTap: () {
              Navigator.pop(
                context,
                MaterialPageRoute(builder: (context) => ForgotPassword()),
              );
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
        padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(24), vertical: ScreenUtil().setHeight(48)),
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
                      color: Colors.black,
                      fontSize: ScreenUtil().setSp(24),
                    ),
                  ),
                  Text(
                    "An authentication code has been\nsent to your registered mail.",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.normal,
                      color: Palette.desctext,
                      fontSize: ScreenUtil().setSp(16),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(44)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                4,
                    (index) => OTPDigitFormField(controller: TextEditingController()),
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(45)),
            ElevatedButton(
              onPressed: () {
                // Add your button action here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Palette.iconix,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(ScreenUtil().setWidth(12)),
                ),
                minimumSize: Size(screenWidth * 0.9, ScreenUtil().setHeight(69)),
              ),
              child: Text(
                'Continue',
                style: GoogleFonts.poppins(
                  color: Palette.bgcolor,
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
