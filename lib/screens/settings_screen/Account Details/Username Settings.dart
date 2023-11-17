import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:rhsgrad/consts/pallete.dart';
import 'package:rhsgrad/screens/settings_screen/Account%20Details/account_details.dart';


class UsernameSettings extends StatelessWidget {
  const UsernameSettings({super.key});

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
                Navigator.pop(context, MaterialPageRoute(builder: (context) => AccountDetails()),);

              },
              child: Icon(
                Iconsax.arrow_circle_left5,
                color: Palette.appbartext,
                size: 30,
              ),
            ),
          ),
          title: Text(
            "Change username",
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
        padding: const EdgeInsets.only(top: 36,left: 24,right: 24),
        child: Column(
          children: [
            Icon(Iconsax.profile_circle5,size: 72,color: Palette.textcons),
            SizedBox(height: 15,),
            Text("You can only change your name\nonce in a month",
            style: GoogleFonts.poppins(
              color: Palette.textcons,
              fontSize: 16,
              fontWeight: FontWeight.w500
            ),),
            SizedBox(height: 40,),
            Container(
              width: 382,
              height: 69,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xFFF0F0F0),
                ),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(24),topRight: Radius.circular(24)),
              ),
              child: Text("")

            ),
            Container(
              width: 382,
              height: 69,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xFFF0F0F0),
                ),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(24),bottomRight: Radius.circular(24)),
              ),
              child: Text("")

            ),
            SizedBox(height: 34,),
            ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => OtpPage()),
                // );
                // // Button action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Palette.iconix,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),


              ),
              child: Container(
                height: 69,
                width:382 ,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Save',
                    style: GoogleFonts.poppins(
                      color: Palette.bgcolor,
                      fontSize: 16,
                      // Adjust font size as needed
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
