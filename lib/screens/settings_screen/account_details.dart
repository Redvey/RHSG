import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../consts/pallete.dart';

class AccountDetails extends StatelessWidget {
  const AccountDetails({super.key});

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
                // Handle back arrow tap
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
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(24)),
              border: Border(

              )
            ),
          )
        ],
      ),
    );
  }
}
