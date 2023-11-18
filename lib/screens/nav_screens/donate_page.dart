import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:rhsgrad/consts/pallete.dart";

import "../../consts/curve_design.dart";

const double fem = 1.0;
const double ffem = 1.0;

class DonatePage extends StatelessWidget {
  const DonatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
            children: [
            // CustomPaint widget to draw the modified semi-circle
            CustomPaint(
            painter: SemiCirclePainter(),
        child: Container(
          height: 150, // Set the height to 30
          width: MediaQuery.of(context).size.width,
        ),
    ),
              Padding(
                    padding: const EdgeInsets.only(left: 24,right: 24,top: 52),
                    child: Column(
                      children: [
                        Row(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://i.pinimg.com/564x/09/4e/3e/094e3edcfbc89104c9cd0a37ec1fc53d.jpg"),
                              fit: BoxFit.fill,
                            ),
                            shape: OvalBorder(),
                              ),
                            ),
                            SizedBox(width: 79,),
                            ShaderMask(
                              blendMode: BlendMode.srcIn,
                              shaderCallback: (Rect bounds) {
                                return Palette.RHSGrad.createShader(bounds); // Use your desired gradient here
                              },
                              child: Text(
                                'RHSGrad',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: 'Mont-Trial',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                            SizedBox(width: 39,),
                            Row(
                              children: [
                                Container(
                                  // child: Image.asset("assets/searchicon.svg",),
                                  child: Icon(Icons.search,color: Palette.iconix,),
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Palette.iconbg,
                                ),),
                                SizedBox(width: 7,),
                                Container(child:
                                Icon(CupertinoIcons.bell_solid,
                                color: Palette.bellicon,),
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Palette.iconbg,
                                ),),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 11,),
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
                        SizedBox(height: 46,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 110*fem,
                            // child: Image.asset("assets/rhsicon.svg"),
                            // backgroundImage: AssetImage("asset/RHS.png"),
                            backgroundImage: NetworkImage(
                              "https://i.pinimg.com/564x/58/f7/fa/58f7fa5d73ebc4d3a23b6d5fd5c437a6.jpg",
                            scale: 40),
                            ),

                          ),
                        SizedBox(height: 64,),
                        Container(
                  width: 382 * fem,
                  height: 50.74 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 5,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(15.83 * fem, 15.67 * fem, 9.89 * fem, 15.75 * fem),
                          decoration: BoxDecoration(
                            color: Color(0xfffff9f5),
                            border: Border.all(
                                color: Color(0xFFFFDAD3)
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(11.5988349915 * fem),
                              bottomLeft: Radius.circular(11.5988349915 * fem),
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Enter Amount',
                                style: GoogleFonts.poppins(
                                  fontSize: 11.5988349915 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                              const SizedBox(width: 115), // Adjusted value according to fem
                              Icon(Icons.monetization_on, color: Palette.donate), // Palette.donate
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Palette.donate,

                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(11.5988349915 * fem),
                              bottomRight: Radius.circular(11.5988349915 * fem),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'DONATE',
                              style: GoogleFonts.poppins(
                                fontSize: 11.5988349915 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.5 * ffem / fem,
                                color: Color(0xff202020),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                        SizedBox(height: 37,),
                        Positioned(
                          // frame2154i5y (0:74)
                          left:  24*fem,
                          top:  497*fem,
                          child:
                          Container(
                            width:  382*fem,
                            height:  124.25*fem,
                            decoration:  BoxDecoration (
                              color:  Color(0xb2000000),
                              borderRadius:  BorderRadius.circular(24*fem),
                              image:  DecorationImage (
                                fit:  BoxFit.cover,
                                image:  NetworkImage("https://i.pinimg.com/564x/11/dd/74/11dd74e35b135b86673365667a8c3b90.jpg")
                              ),
                            ),
                            child:
                            Center(
                              child:
                              Text(
                                'THANK YOU',
                                style:  GoogleFonts.poppins (
                                  fontSize:  28.6723957062*ffem,
                                  fontWeight:  FontWeight.w700,
                                  height:  1.5*ffem/fem,
                                  color:  Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 63.75,),
                        Column(crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(child: Image.asset("assets/gift.png",
                              width: 100, // Set a smaller width
                              height: 100,
                            color: Color(0xFFFDC7BB),),
                            ),
                            Text(
                              'your small gestures of kindness means a world to us ',
                              style: GoogleFonts.poppins(
                                color: Palette.desctext,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            SizedBox(height: 23.1,),
                            Text(
                    '"Generosity knows no bounds its a gift that keeps on giving."',
                style: GoogleFonts.poppins(
                color: Color(0xFFE09300),
                fontSize: 11,
                fontWeight: FontWeight.w400,
                height: 0,
              ),
    ),
                            SizedBox(height: 120,),
                          ],
                        )
                      ],
                    ),
              ),


    ]),
      ),);
  }
}
