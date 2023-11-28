import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:rhsgrad/consts/pallete.dart';
import 'package:rhsgrad/screens/settings_screen/Account%20Details/account_details.dart';

import '../../../consts/curve_design.dart';


class DateOfBirthSettings extends StatefulWidget {
  final String pageTitle;
  final IconData leadingIcon;
  final IconData mainIcon;
  final String hintText;
  final String details;
  final void Function(BuildContext) onTap;


  const DateOfBirthSettings({
    required this.pageTitle,
    required this.leadingIcon,
    required this.mainIcon,
    required this.hintText,
    required this.onTap,
    required this.details,
  });

  @override
  _DateOfBirthSettingsState createState() => _DateOfBirthSettingsState();
}

class _DateOfBirthSettingsState extends State<DateOfBirthSettings> {
  late DateTime selectedDate;

  @override
  void initState() {
    super.initState();
    selectedDate = DateTime.now();
  }

  Future<void> _selectDate(BuildContext context) async {
    if (widget.pageTitle == 'Date of Birth') {
      final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1900),
        lastDate: DateTime.now(),
      );
      if (picked != null && picked != selectedDate) {
        setState(() {
          selectedDate = picked;
        });
      }
    } else if (widget.pageTitle == 'Change Batch Number') {
      final DateTime? pickedYear = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1900),
        lastDate: DateTime.now(),
        initialDatePickerMode: DatePickerMode.year,
      );
      if (pickedYear != null && pickedYear != selectedDate) {
        setState(() {
          selectedDate = pickedYear;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.bgcolor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            CustomPaint(
              painter: SemiCirclePainter(),
              child: Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60, left: 24, right: 24),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => AccountDetails(),
                                    ),
                                  );
                                },
                                child: Icon(
                                  widget.leadingIcon,
                                  color: Palette.desctext,
                                  size: 30,
                                ),
                              ),
                              Text(
                                widget.pageTitle,
                                style: GoogleFonts.poppins(
                                  color: Palette.desctext,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
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
                    ],
                  ),
                  SizedBox(height: 36),
                  Icon(widget.mainIcon, size: 130, color: Palette.textcons),
                  SizedBox(height: 15),
                  Text(
                    widget.details,
                    style: GoogleFonts.poppins(
                      color: Palette.desctext,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 40),
                  Container(
                    width: 382,
                    height: 69,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFFF0F0F0),
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 22, bottom: 23, left: 14),
                      child: Text(
                        '${widget.pageTitle}',
                        style: GoogleFonts.poppins(
                          color: Palette.textcons,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 382,
                    height: 69,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFFF0F0F0),
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(24),
                        bottomRight: Radius.circular(24),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20, left: 14, bottom: 12),
                      child: InkWell(
                        onTap: () {
                          _selectDate(context);
                        },
                        child: TextFormField(
                          controller: TextEditingController(
                            text: (widget.pageTitle == 'Change Batch Number')
                                ? selectedDate.year.toString() // Display only the year
                                : selectedDate.toString().split(' ')[0], // Display full date
                          ),
                          enabled: false,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                          ),
                          decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.calendar_today,
                              color: Palette.desctext,
                            ),
                            border: InputBorder.none,
                            hintText: widget.hintText,
                            hintStyle: GoogleFonts.poppins(
                              color: Palette.textcons,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),


                      ),
                    ),
                  ),
                  SizedBox(height: 34),
                  ElevatedButton(
                    onPressed: () {
                      widget.onTap(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Palette.iconix,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Container(
                      height: 69,
                      width: 382,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Save Changes',
                          style: GoogleFonts.poppins(
                            color: Palette.bgcolor,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DateOfBirth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DateOfBirthSettings(
      mainIcon: Icons.cake,
      details: 'You can change your birthday once.',
      pageTitle: 'Change Date of Birth',
      leadingIcon: Iconsax.arrow_circle_left5,
      hintText: 'Enter your Birthday',
      onTap: (context) {
        // Handle save changes action here
      },
    );
  }
}




