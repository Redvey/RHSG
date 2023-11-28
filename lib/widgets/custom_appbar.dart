import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../consts/pallete.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://i.pinimg.com/564x/09/4e/3e/094e3edcfbc89104c9cd0a37ec1fc53d.jpg"),
                  fit: BoxFit.fill,
                ),
                shape: const CircleBorder(),
              ),
            ),
            const SizedBox(width: 79),
            ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (Rect bounds) {
                return Palette.rhsgrad.createShader(bounds); // Use your desired gradient here
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
            const SizedBox(width: 39),
            Row(
              children: [
                Container(
                  child: Image.asset(
                    'assets/Vector.png',
                    width: 18, // Set the width of the image
                    height: 18,
                  ),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Palette.iconbg,
                  ),
                ),
                const SizedBox(width: 7),
                Container(
                  child: const Icon(
                    CupertinoIcons.bell_solid,
                    color: Palette.bellicon,
                  ),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Palette.iconbg,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 11),
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
    );
  }
}
