import 'package:flutter/material.dart';
import 'package:you_tube/colors/app_colors.dart';

class LibraryCon extends StatelessWidget {
  final double height;
  final double weight;
  final Color colors;
  final String img;
  final double radius;

  const LibraryCon({
    super.key,

    this.height = 0,
    this.weight = 0,
    this.colors = AppColors.secondarycolor,
    required this.img, this.radius=5,
  });

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenheight * 0.1,
      width: screenwidth * 0.39,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        image: DecorationImage(image: AssetImage(img), fit: BoxFit.fill),
        borderRadius: BorderRadius.circular(radius)
      ),
    );
  }
}
