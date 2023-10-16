import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rhsgrad/consts/pallete.dart';

class ProfileScreenTabs extends StatelessWidget {
  final String text;
  final bool isSelected;
  final Function()? onTap;
  final Widget destinationPage; // Destination page for this tab

  const ProfileScreenTabs({
    Key? key,
    required this.text,
    this.isSelected = false,
    this.onTap,
    required this.destinationPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Check if onTap is not null and execute it
        onTap?.call();

        // Use Navigator to navigate to the specified destination page without any animation
        Navigator.of(context).pushReplacement(
          NoAnimationPageRoute(
            builder: (context) => destinationPage,
          ),
        );
      },
      child: Container(
        height: 41,
        margin: EdgeInsets.only(right: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            width: 1,
            color: Palette.buttstroke, // Change to your desired border color
          ),
          color: isSelected ? Palette.iconix : Colors.transparent, // Change to your desired selected color
        ),
        child: Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: 14,
            color: isSelected ? Colors.white : Colors.white, // Change to your desired text color
          ),
        ),
      ),
    );
  }
}

class NoAnimationPageRoute<T> extends PageRoute<T> {
  NoAnimationPageRoute({required this.builder, RouteSettings? settings})
      : super(settings: settings);

  final WidgetBuilder builder;

  @override
  Color get barrierColor => Colors.transparent;

  @override
  String get barrierLabel => '';

  @override
  Duration get transitionDuration => const Duration(milliseconds: 0);

  @override
  bool get opaque => false;

  @override
  bool get barrierDismissible => true;

  @override
  Widget buildPage(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
    return builder(context);
  }

  @override
  bool get maintainState => false; // Set maintainState to false
}

