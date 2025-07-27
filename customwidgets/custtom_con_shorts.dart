import 'package:flutter/material.dart';
import 'package:you_tube/colors/app_colors.dart';


class ShortImg extends StatelessWidget {
  final double height;
  final double weight;
  final Color colors;
  final String img;
  final double radius;

  const ShortImg({
    super.key,
    this.height = 300,
    this.weight = 180,
    this.colors = AppColors.subtext,
    required this.img,
    this.radius = 15,
  });

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenheight * 0.35,
      width: screenwidth * 0.5,
      decoration: BoxDecoration(
        color: colors,

        image: DecorationImage(image: AssetImage(img), fit: BoxFit.fill),
        borderRadius: BorderRadius.circular(radius),
      ),
    );
  }
}
