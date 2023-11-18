import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

const double fem = 1.0;
const double ffem = 1.0;

class DonatePage extends StatelessWidget {
  const DonatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // donate7Es (0:72)
        width:  double.infinity,
        height:  982*fem,
        decoration:  BoxDecoration (
          color:  Color(0xffffffff),
          borderRadius:  BorderRadius.circular(24*fem),
        ),
        child:
        Stack(
          children:  [
          Positioned(
          // autogroup1zbmD31 (GFyHYYyLp64vXcPFT1zBM)
          left:  124*fem,
          top:  160*fem,
          child:
          Container(
            width:  301*fem,
            height:  185*fem,
            child:
            Row(
              crossAxisAlignment:  CrossAxisAlignment.center,
              children:  [
                Container(
                  // ellipse129KLw (0:73)
                  margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 101*fem, 0*fem),
                  width:  185*fem,
                  height:  185*fem,
                  decoration:  BoxDecoration (
                    borderRadius:  BorderRadius.circular(92.5*fem),
                    image:  DecorationImage (
                      fit:  BoxFit.cover,
                      image:  NetworkImage (
                          "[Image url]",
                      ),
                    ),
                  ),
                ),
                Container(
                  // teenyiconsbanksolidQ7V (0:94)
                  margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 52*fem),
                  width:  15*fem,
                  height:  15*fem,
                  child:
                  Image.network(
                    "[Image url]",
                    width:  15*fem,
                    height:  15*fem,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          // frame2154KET (0:74)
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
                image:  NetworkImage (
                  "[Image url]",
                ),
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
        Positioned(
          // frame2158kaf (0:77)
          left:  24*fem,
          top:  409*fem,
          child:
          Container(
            width:  382*fem,
            height:  50.74*fem,
            child:
            Row(
              crossAxisAlignment:  CrossAxisAlignment.center,
              children:  [
                Container(
                  // frame2157579 (0:78)
                  margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 3.1*fem, 0*fem),
                  padding:  EdgeInsets.fromLTRB(15.83*fem, 15.67*fem, 9.89*fem, 15.75*fem),
                  width:  277.89*fem,
                  height:  double.infinity,
                  decoration:  BoxDecoration (
                    color:  Color(0xfffff9f5),
                    borderRadius:  BorderRadius.only (
                      topLeft:  Radius.circular(11.5988349915*fem),
                      bottomLeft:  Radius.circular(11.5988349915*fem),
                    ),
                  ),
                  child:
                  Container(
                    // frame2156Zo1 (0:80)
                    width:  double.infinity,
                    height:  double.infinity,
                    child:
                    Row(
                      crossAxisAlignment:  CrossAxisAlignment.end,
                      children:  [
                        Container(
                          // enteramountJkb (0:82)
                          margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 153.83*fem, 0.17*fem),
                          child:
                          Text(
                            'Enter Amount',
                            style:  GoogleFonts.poppins(
                              fontSize:  11.5988349915*ffem,
                              fontWeight:  FontWeight.w400,
                              height:  1.5*ffem/fem,
                              color:  Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // group2Ao (0:83)
                          width:  19.33*fem,
                          height:  19.33*fem,
                          child:
                          Image.network(
                            "[Image url]",
                            width:  19.33*fem,
                            height:  19.33*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  // frame56xq9 (0:86)
                  width:  101.01*fem,
                  height:  double.infinity,
                  decoration:  BoxDecoration (
                    color:  Color(0xff5ecc4f),
                    borderRadius:  BorderRadius.only (
                      topRight:  Radius.circular(11.5988349915*fem),
                      bottomRight:  Radius.circular(11.5988349915*fem),
                    ),
                  ),
                  child:
                  Center(
                    child:
                    Text(
                      'DONATE',
                      style:  GoogleFonts.poppins (
                        fontSize:  11.5988349915*ffem,
                        fontWeight:  FontWeight.w400,
                        height:  1.5*ffem/fem,
                        color:  Color(0xff202020),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          // frame2162GL3 (0:90)
          left:  175*fem,
          top:  685*fem,
          child:
          Align(
            child:
            SizedBox(
              width:  79.75*fem,
              height:  72.75*fem,
              child:
              Image.network(
                "[Image url]",
                width:  79.75*fem,
                height:  72.75*fem,
              ),
            ),
          ),
        ),
        Positioned(
          // yoursmallgesturesofkindnessmea (0:93)
          left:  59*fem,
          top:  775*fem,
          child:
          Align(
            child:
            SizedBox(
              width:  317*fem,
              height:  18*fem,
              child:
              Text(
                'your small gestures of kindness means a world to us ',
                style:  GoogleFonts.poppins (
                  fontSize:  12*ffem,
                  fontWeight:  FontWeight.w400,
                  height:  1.5*ffem/fem,
                  color:  Color(0xff636363),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // generosityknowsnoboundsitsagif (0:98)
          left:  53.1004943848*fem,
          top:  816.1004638672*fem,
          child:
          Align(
            child:
            SizedBox(
              width:  370*fem,
              height:  19*fem,
              child:
              Text(
                '"Generosity knows no bounds; it\'s a gift that keeps on giving."',
                style:  GoogleFonts.poppins (
                  fontSize:  12.2411155701*ffem,
                  fontWeight:  FontWeight.w400,
                  height:  1.5*ffem/fem,
                  color:  Color(0xffe09400),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // 8mZ (00958157)
          left:  0*fem,
          top:  0*fem,
          child:
          Align(
            child:
            SizedBox(
              width:  430*fem,
              height:  86*fem,
              child:
              Image.network(
                "",
                width:  430*fem,
                height:  86*fem,
              ),
            ),
          ),
        ),
        Positioned(
          // rhsgradG75 (0:143)
          left:  163*fem,
          top:  53*fem,
          child:
          Align(
            child:
            SizedBox(
              width:  81*fem,
              height:  28*fem,
              child:
              Text(
                'RHSGrad',
                style:  GoogleFonts.montez (

                  fontSize:  22*ffem,
                  fontWeight:  FontWeight.w300,
                  height:  1.2575*ffem/fem,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // ellipse21Zrs (0:144)
          left:  24*fem,
          top:  52*fem,
          child:
          Align(
            child:
            SizedBox(
              width:  50*fem,
              height:  50*fem,
              child:
              Container(
                decoration:  BoxDecoration (
                  borderRadius:  BorderRadius.circular(25*fem),
                  color:  Color(0xffd9d9d9),
                  image:  DecorationImage (
                    fit:  BoxFit.cover,
                    image:  NetworkImage (
                      "[Image url]",
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // notifybarff1 (0:145)
          left:  312*fem,
          top:  51*fem,
          child:
          Container(
            width:  94*fem,
            height:  40*fem,
            child:
            Row(
              crossAxisAlignment:  CrossAxisAlignment.center,
              children:  [
                Container(
                  // frame2150c4T (I0:145;0:6838)
                  margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 14*fem, 0*fem),
                  width:  40*fem,
                  height:  40*fem,
                  child:
                  Image.network(
                    "[Image url]",
                    width:  40*fem,
                    height:  40*fem,
                  ),
                ),
                Container(
                  // frame2151KzT (I0:145;0:6843)
                  width:  40*fem,
                  height:  40*fem,
                  child:
                  Image.network(
                    "[Image url]",
                    width:  40*fem,
                    height:  40*fem,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          // rectangle34639194x3 (0:146)
          left:  0*fem,
          top:  113*fem,
          child:
          Align(
            child:
            SizedBox(
              width:  430*fem,
              height:  1*fem,
              child:
              Container(
                decoration:  BoxDecoration (
                  color:  Color(0xfff5f5f5),
                ),
              ),
            ),
          ),
        ),
      ],),
    ),
    );
  }
}
