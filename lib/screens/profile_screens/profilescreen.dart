import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:rhsgrad/consts/pallete.dart';
import 'package:rhsgrad/screens/profile_screens/comments.dart';
import 'package:rhsgrad/screens/profile_screens/contributions.dart';
import 'package:rhsgrad/screens/profile_screens/hearts.dart';
import 'package:rhsgrad/screens/profile_screens/media_shared.dart';
import 'package:rhsgrad/screens/profile_screens/saved.dart';

import '../../widgets/profilescreen_widgets/pf_widgets.dart';

class ProfileScreen extends StatefulWidget {
  // final String uid;
  const ProfileScreen({super.key}); //required this.uid

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // getData() async{
  //   try{
  //
  //   }catch(e){
  //     showSnackBar(context,e.toString(),)
  //   }
  //}
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Palette.bgcolor,
      appBar: PreferredSize(preferredSize: Size.fromHeight(48),
        child: AppBar(
          centerTitle: false,
          backgroundColor: Palette.bgcolor,
          leading:// Back arrow
          Padding(
            padding: const EdgeInsets.only(left: 24,),
            child: InkWell(
              onTap: () {

              },
              child: Icon(
                Iconsax.arrow_circle_left5,
                color: Palette.textcons,
                size: 30,
              ),
            ),
          ),
          title: Text("Profile",
          style: GoogleFonts.poppins(
            fontSize: 16,color: Palette.textcons
          ),),
          actions: [
            Icon(Icons.settings_rounded,
            color: Palette.iconix,)
          ],
          bottom://divider
          PreferredSize(
          preferredSize: Size.fromHeight(1), // Set the height of the divider
    child: Divider(
    color: Palette.buttstroke, // Set the color of the divider
    thickness: 1, // Set the thickness of the divider
    ),)

        ),
      ),
      body:
      ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Palette.buttstroke,
                      backgroundImage: NetworkImage(
                          "https://i.pinimg.com/564x/2a/51/03/2a510302f60c2dd46cbf4fc14e2bfed8.jpg"),
                      radius: 87/2,
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          buildStatColumn(1119, "followers"),
                          buildStatColumn(74, "following"),
                          //edit profile button
                          GestureDetector(
                            onTap: (){},
                            child: Container(
                              height: 31.1,
                              width: 83.21,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.46),
                                border: Border.all(
                                  width: 1,
                                  color: Palette.buttstroke,
                                ),
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Edit Profile",
                                  style: GoogleFonts.poppins(
                                    color: Palette.textcons,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          )

                        ],
                      ),
                    ),

                  ],
                ),
                //username
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(top:15),
                  child: Text('Jadugar_jerush',
                    style: GoogleFonts.poppins(
                      color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500,
                    ),),
                ),
                //username2
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(top:1),
                  child: Text('@JJ_2007',
                    style: GoogleFonts.poppins(
                      color: Palette.textcons,fontSize: 12,fontWeight: FontWeight.w500,
                    ),),
                ),
                //bio
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(top:12),
                  child: Text('I will rise again :)',
                    style: GoogleFonts.poppins(
                      color: Palette.textcons,fontSize: 14,fontWeight: FontWeight.w500,
                    ),),
                ),
                SizedBox(height: 17,),
                Row(
                  children: [
                    //Location
                    Container(
                      margin: EdgeInsets.only(right: 45),

                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on_rounded,
                            color: Palette.textcons,
                            size: 20,
                          ),
                          SizedBox(width: 7), // Adjust the gap between the icon and text
                          Text(
                            "California,US", // Replace with your location name
                            style: GoogleFonts.poppins(
                              color: Palette.textcons,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    //Batch number
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.stars_sharp,
                            color: Palette.textcons,
                            size: 20,
                          ),
                          SizedBox(width: 4.5), // Adjust the gap between the icon and text
                          Text(
                            "BATCH OF 2018",
                            style: GoogleFonts.poppins(
                              color: Palette.textcons,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child:   Row(
                    children: [
                      // POSTS
                      ProfileScreenTabs(text: "POSTS",destinationPage: ProfileScreen(),isSelected: true,),
                      // CONTRIBUTIONS
                      ProfileScreenTabs(text: "CONTRIBUTIONS",destinationPage: ContributePage()),
                      // SAVED
                      ProfileScreenTabs(text: "SAVED",destinationPage: SavedPage()),
                      // COMMENTS
                      ProfileScreenTabs(text: "COMMENTS",destinationPage: CommentsPage()),
                      // MEDIA
                      ProfileScreenTabs(text: "MEDIA",destinationPage: MediaPage()),
                      // HEARTS
                      ProfileScreenTabs(text: "HEARTS",destinationPage: HeartsPage()),
                    ],
                  )

                )


              ],
            ),
          )
        ],
      ),
    );
  }
}
// this for making followes and following
Column buildStatColumn(int num, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        margin: EdgeInsets.only(top: 4),
        child: Text(
          num.toString(),
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w700,
            color: Palette.textcons,
            fontSize: 14,
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 4),
        child: Text(
          label, // Add the label here
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500, // You can adjust the style as needed
            color: Palette.textcons,
            fontSize: 14, // You can adjust the font size as needed
          ),
        ),
      ),
    ],
  );
}





