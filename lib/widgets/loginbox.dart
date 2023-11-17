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
        minWidth: ScreenUtil().setWidth(320),
        minHeight: ScreenUtil().setHeight(69),
      ),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 5), // Adjust the shadow offset
            ),
          ],
        ),
        child: TextFormField(
          style: GoogleFonts.poppins(
            color: Colors.black,
          ),
          obscureText: obscureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(ScreenUtil().setWidth(27)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(ScreenUtil().setWidth(12),
              ),borderSide: BorderSide.none
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Palette.containercolor,
                width: ScreenUtil().setWidth(0.5),
              ),
              borderRadius: BorderRadius.circular(ScreenUtil().setWidth(12)),
            ),
            filled: true,
            fillColor: Palette.containercolor,
            hintText: widget.hintText,
            hintStyle: TextStyle(
              color: Palette.hinttext,
            ),
            prefixIcon: widget.prefixIcon != null
                ? Icon(
              widget.prefixIcon,
              size: ScreenUtil().setWidth(20),
              color: Palette.iconix,
            )
                : null,
            suffixIcon: widget.showPasswordSuffix
                ? InkWell(
              onTap: () {
                setState(() {
                  obscureText = !obscureText;
                });
              },
              child: Icon(
                obscureText ? Icons.visibility_off : Icons.visibility,
                size: ScreenUtil().setWidth(20),
                color: Palette.iconix,
              ),
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            )
                : null,
          ),
        ),
      ),
    );

  }
}
