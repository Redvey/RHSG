import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/akar_icons.dart';
import 'package:rhsgrad/consts/pallete.dart';

class LoginButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Determine the device's screen width
    final screenWidth = MediaQuery.of(context).size.width;

    // Calculate button width as a percentage of the screen width
    final buttonWidth = screenWidth * 0.9;

    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            // Google button action
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Palette.containercolor, // Set the button color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0), // Set the border radius
            ),
            minimumSize: Size(buttonWidth, 69), // Set the button size
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/google_icon.png', // Path to the Google icon image
                width: 30, // Adjust the width as needed
                height: 30, // Adjust the height as needed
                // Set the icon color
              ),
              SizedBox(width: 20), // Add some spacing between the icon and text
              Text(
                'Signup with Google',
                style: TextStyle(
                  color: Palette.textcons,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20), // Add spacing between the buttons
        ElevatedButton(
          onPressed: () {
            // Facebook button action
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Palette.containercolor, // Set the button color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0), // Set the border radius
            ),
            minimumSize: Size(buttonWidth, 69), // Set the button size
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Iconify(AkarIcons.facebook_fill,
                color: Color(0xFF1877F2),
                size: 30,
              ),
              SizedBox(width: 20), // Add some spacing between the icon and text
              Text(
                'Signup with Facebook',
                style: TextStyle(
                  color: Palette.textcons,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
