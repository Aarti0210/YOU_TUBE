import 'package:flutter/material.dart';
import 'package:you_tube/colors/app_colors.dart';


class cus_con extends StatelessWidget {
  final double height;
  final double weight;
  final Color colors;
  final String img;
  final double radius;

  const cus_con({
    super.key,
    this.height = 250.35,
    this.weight = double.infinity,
    this.colors = AppColors.secondarycolor,
    required this.img,
    this.radius = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: weight,
      decoration: BoxDecoration(
        color: colors,

        image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(radius),
      ),
    );
  }
}
