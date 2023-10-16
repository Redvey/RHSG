import 'package:flutter/material.dart';

class TempWa extends StatelessWidget {
  final Color? backgroundColor;

  const TempWa({Key? key, required this.backgroundColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 500,
      color: backgroundColor, // Set the background color if provided
    );
  }
}
