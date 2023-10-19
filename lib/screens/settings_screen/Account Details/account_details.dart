import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../../consts/pallete.dart';

class AccountDetails extends StatelessWidget {
  const AccountDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              },
              child: Icon(
                Iconsax.arrow_circle_left5,
                color: Palette.appbartext,
                size: 30,
              ),
            ),
          ),
          title: Text(
            "Account Details",
            style: GoogleFonts.poppins(
              fontSize: 16,
              color: Palette.textcons,
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(1),
            child: Divider(
              color: Palette.buttstroke,
              thickness: 1,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Personal Information',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black,
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
                color: Colors.black,
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
    );
  }
}

Widget buildOption(BuildContext context, String text, {Widget? suffixIcon, Widget? prefixIcon}) {
  return ListTile(
    leading: prefixIcon,
    title: Text(text, style: TextStyle(color: Palette.textcons)),
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
