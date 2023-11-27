import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:rhsgrad/screens/settings_screen/mainsettings.dart';

import '../../../consts/curve_design.dart';
import '../../../consts/pallete.dart';

class AccountDetails extends StatelessWidget {
  const AccountDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.bgcolor,

      body: Stack(
        children: [
          CustomPaint(
            painter: SemiCirclePainter(),
            child: Container(
              height: 150, // Set the height to 30
              width: MediaQuery.of(context).size.width,
            ),
          ),
          ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 35, left: 24, right: 24),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SettingsPage()),
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Iconsax.arrow_circle_left5,
                            color: Palette.desctext,
                            size: 30,
                          ),
                          SizedBox(width: 12),
                          Text(
                            "Account Details",
                            style: GoogleFonts.poppins(
                              color: Palette.desctext,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          )
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
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24,left: 24,right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Personal Information',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Palette.desctext,
                      ),
                    ),
                    SizedBox(height: 4),
                    Container(
                      width: 382,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFF0F0F0),
                        ),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Column(
                        children: <Widget>[
                          buildOption(context, 'Username', prefixIcon: Icon(Iconsax.profile_circle5), suffixIcon: Icon(Icons.arrow_forward_ios_rounded)),
                          buildOption(context, 'Email', prefixIcon: Icon(Icons.mail), suffixIcon: Icon(Icons.arrow_forward_ios_rounded)),
                          buildOption(context, 'Phone Num', prefixIcon: Icon(Icons.phone), suffixIcon: Icon(Icons.arrow_forward_ios_rounded)),
                          buildOption(context, 'Date of Birth', prefixIcon: Icon(Icons.cake), suffixIcon: Icon(Icons.arrow_forward_ios_rounded)),
                          buildOption(context, 'Batch Num', prefixIcon: Icon(Icons.person), suffixIcon: Icon(Icons.arrow_forward_ios_rounded)),
                        ],
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Others',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Palette.desctext,
                      ),
                    ),
                    SizedBox(height: 4),
                    Container(
                      width: 382,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFF0F0F0),
                        ),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Column(
                        children: <Widget>[
                          buildOption(context, 'Password', prefixIcon: Icon(Icons.lock), suffixIcon: Icon(Icons.arrow_forward)),
                          buildOption(context, 'Download Personal Data', prefixIcon: Icon(Icons.shopping_bag), suffixIcon: Icon(Icons.download)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )

        ],),
    );
  }
}

Widget buildOption(BuildContext context, String text, {Widget? suffixIcon, Widget? prefixIcon}) {
  return ListTile(
    leading: prefixIcon,
    title: Text(text, style: TextStyle(color: Palette.desctext)),
    trailing: suffixIcon,
    onTap: () {
      String routeName = '';
      if (text == 'Username') {
        routeName = '/username';
      } else if (text == 'Email') {
        routeName = '/email';
      } else if (text == 'Phone Num') {
        routeName = '/phone';
      }
      navigateToPage(context, routeName);
    },
  );
}

void navigateToPage(BuildContext context, String routeName) {
  Navigator.of(context).pushNamed(routeName);
}
