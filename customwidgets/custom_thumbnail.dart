import 'package:flutter/material.dart';
import 'package:you_tube/colors/app_colors.dart';

class custom_thumbnail extends StatelessWidget {
  final double height;
  final double weight;
  final Color colors;
  final String img;
  final double radius;

  const custom_thumbnail({
    super.key,
     this.height=0,
   this.weight=0,
    this.colors= AppColors.secondarycolor,
    required this.img,
    this.radius =6, 
  });

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenheight * 0.3,
      width: screenwidth *1.5,
      decoration: BoxDecoration(
        color: AppColors.secondarycolor,

        image: DecorationImage(
          image: AssetImage(img),

          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.circular(radius),
      ),
    );
  }
}
