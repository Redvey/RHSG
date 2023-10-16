import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rhsgrad/consts/pallete.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginField extends StatefulWidget {
  final String hintText;
  final IconData? prefixIcon; // Optional prefix icon
  final bool showPasswordSuffix; // Indicates whether to show the password visibility toggle icon

  const LoginField({
    Key? key,
    required this.hintText,
    this.prefixIcon, // Pass the optional prefix icon here
    this.showPasswordSuffix = false, // Set default to false
  }) : super(key: key);

  @override
  _LoginFieldState createState() => _LoginFieldState();
}

class _LoginFieldState extends State<LoginField> {
  bool obscureText = false; // Indicates whether the text should be obscured initially

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: ScreenUtil().setWidth(320), // Set the minimum width using ScreenUtil
        minHeight: ScreenUtil().setHeight(69), // Set the minimum height using ScreenUtil
      ),
      child: TextFormField(
        style: GoogleFonts.poppins(
          color: Colors.white,
        ),
        obscureText: obscureText, // Obfuscate the text when obscureText is true
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(ScreenUtil().setWidth(27)), // Use ScreenUtil for padding
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(ScreenUtil().setWidth(12)), // Use ScreenUtil for radius
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Palette.textcons, // Border color
              width: ScreenUtil().setWidth(0.5), // Border width using ScreenUtil
            ),
            borderRadius: BorderRadius.circular(ScreenUtil().setWidth(12)), // Set the border radius using ScreenUtil
          ),
          filled: true, // Set to true to fill the background with a color
          fillColor: Palette.containercolor, // Set the background color to Palette.containerColor
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: Palette.textcons, // Set the hint text color to Palette.textcons
          ),
          prefixIcon: widget.prefixIcon != null
              ? Icon(
            widget.prefixIcon,
            size: ScreenUtil().setWidth(20), // Set the icon size using ScreenUtil
            color: Palette.iconix, // Set the prefix icon color
          )
              : null, // Set to null if no prefix icon is provided
          suffixIcon: widget.showPasswordSuffix
              ? InkWell(
            onTap: () {
              setState(() {
                obscureText = !obscureText; // Toggle password visibility
              });
            },
            child: Icon(
              obscureText ? Icons.visibility_off : Icons.visibility,
              size: ScreenUtil().setWidth(20), // Set the icon size using ScreenUtil
              color: Palette.iconix, // Set the suffix icon color
            ),
            splashColor: Colors.transparent, // Remove splash effect
            highlightColor: Colors.transparent, // Remove highlight effect
          )
              : null,
        ),
      ),
    );
  }
}
