import 'package:flutter/material.dart';
import 'package:rhsgrad/consts/pallete.dart';


class SemiCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Palette.curve
      ..style = PaintingStyle.fill;

    double width = size.width;
    double height = size.height;

    // Draw the modified semi-circle at the top
    Path path = Path()
      ..moveTo(0, 0) // Move to the top-left corner
      ..quadraticBezierTo(width / 2, height, width, 0) // Adjust control points
      ..lineTo(0, 0); // Close the path

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}