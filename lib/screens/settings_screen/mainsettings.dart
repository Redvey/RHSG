import 'package:flutter/material.dart';
import 'package:rhsgrad/consts/pallete.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.bgcolor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(48),
        child: AppBar(
          centerTitle: false,
          backgroundColor: Palette.bgcolor,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: InkWell(
              onTap: () {
                // Handle back arrow tap
              },
              child: Icon(
                Iconsax.arrow_circle_left5,
                color: Palette.textcons,
                size: 30,
              ),
            ),
          ),
          title: Text(
            "Settings",
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
      body: ListView(
        children: [
          // Example of a settings option
          buildSettingOption("Account Details", Iconsax.profile_circle5, () {
            // Handle the tap on Option 1
          }),
          SizedBox(height: 22,),
          buildSettingOption("Privacy and Security", Icons.privacy_tip_rounded, () {
            // Handle the tap on Option 2
          }),
          SizedBox(height: 22,),
          buildSettingOption("Security", Icons.security_rounded, () {
            // Handle the tap on Option 2
          }),
          SizedBox(height: 22,),
          buildSettingOption("QR Code", Icons.qr_code_scanner, () {
            // Handle the tap on Option 2
          }),
          SizedBox(height: 22,),
          buildSettingOption("Notifications", Iconsax.notification, () {
            // Handle the tap on Option 2
          }),
          SizedBox(height: 22,),
          buildSettingOption("Terms", Icons.contact_page_rounded, () {
            // Handle the tap on Option 2
          }),
          SizedBox(height: 22,),
          buildSettingOption("Privay Policy", Icons.policy, () {
            // Handle the tap on Option 2
          }),
          SizedBox(height: 22,),
          buildSettingOption("Help Centre", Icons.help_rounded, () {
            // Handle the tap on Option 2
          }),
          SizedBox(height: 22,),
          buildSettingOption("Contact Support", Iconsax.support, () {
            // Handle the tap on Option 2
          }),
          SizedBox(height: 22,),
          Divider(
            color: Palette.buttstroke,
            thickness: 1,
          ),
          SizedBox(height: 14,),
          ListTile(
            leading: Icon(Iconsax.logout_1,
            color: Palette.iconix,),
            title: Text("Logout",
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: Palette.iconix,
              ),),
            onTap: (){

            },
          )


          // Add more options similarly
        ],
      ),
    );
  }

  Widget buildSettingOption(String title, IconData icon, VoidCallback onTap) {
    return ListTile(
      leading: Icon(
        icon,
        color: Palette.textcons, // Icon color
        size: 20,
      ),
      title: Text(
        title,
        style: GoogleFonts.poppins(
          fontSize: 16,
          color: Palette.textcons,
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
