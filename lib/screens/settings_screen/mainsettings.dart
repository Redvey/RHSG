import 'package:flutter/material.dart';
import 'package:rhsgrad/consts/pallete.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:rhsgrad/screens/settings_screen/Account%20Details/account_details.dart';

import '../../consts/curve_design.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key});

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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 35,left: 24,right: 24),
                    child: GestureDetector(
                      onTap: () {

                      },
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(mainAxisAlignment: MainAxisAlignment.start,

                            children: [
                              Icon(
                                Iconsax.arrow_circle_left5,
                                color: Palette.desctext,
                                size: 30,
                              ),
                              SizedBox(width: 12,),
                              Text("Settings",style: GoogleFonts.poppins(
                                  color: Palette.desctext,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500
                              ),)
                            ],
                          ),
                          SizedBox(height: 10,),
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
                  buildSettingOption("Account Details", Iconsax.profile_circle5, () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AccountDetails()),
                    );
                  }),
                  SizedBox(height: 22),
                  buildSettingOption("Privacy and Security", Icons.privacy_tip_rounded, () {
                    // Handle the tap on Privacy and Security
                  }),
                  SizedBox(height: 22),
                  buildSettingOption("Security", Icons.security_rounded, () {
                    // Handle the tap on Security
                  }),
                  SizedBox(height: 22),
                  buildSettingOption("QR Code", Icons.qr_code_scanner, () {
                    // Handle the tap on QR Code
                  }),
                  SizedBox(height: 22),
                  buildSettingOption("Notifications", Iconsax.notification, () {
                    // Handle the tap on Notifications
                  }),
                  SizedBox(height: 22),
                  buildSettingOption("Privacy Policy", Icons.policy, () {
                    // Handle the tap on Privacy Policy
                  }),
                  SizedBox(height: 22),
                  buildSettingOption("Help Centre", Icons.help_rounded, () {
                    // Handle the tap on Help Centre
                  }),
                  SizedBox(height: 22),
                  buildSettingOption("Contact Support", Iconsax.support, () {
                    // Handle the tap on Contact Support
                  }),
                  SizedBox(height: 22),
                  Divider(
                    color: Palette.buttstroke,
                    thickness: 1,
                  ),
                  SizedBox(height: 14),
                  ListTile(
                    leading: Icon(
                      Iconsax.logout_1,
                      color: Palette.iconix,
                    ),
                    title: Text(
                      "Logout",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Palette.iconix,
                      ),
                    ),
                    onTap: () {
                      // Perform logout action
                    },
                  ),
                  // Add more ListTile options similarly
                ],
              ),
            ],
          )

        ]
      ),
    );
  }

  Widget buildSettingOption(String title, IconData icon, VoidCallback onTap) {
    return ListTile(
      leading: Icon(
        icon,
        color: Palette.desctext, // Icon color
        size: 25,
      ),
      title: Text(
        title,
        style: GoogleFonts.poppins(
          fontSize: 16,
          color: Palette.desctext,
        ),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios_rounded,
        color: Palette.textcons,
      ),
      onTap: onTap,
    );
  }
}

