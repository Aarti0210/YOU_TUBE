import 'package:flutter/material.dart';
import 'package:you_tube/colors/app_colors.dart';

class circle_con extends StatelessWidget {
  
  final double height;
  final double wid;
  final Color colors;
  final String img;

  const circle_con({
    super.key,
    this.height = 45,
     this.wid=45,
    this.colors = AppColors.secondarycolor,
    required this.img,
    
  });

  @override
  Widget build(BuildContext context) {
    
    return Container(
        height:height,
      width: wid,
      decoration: BoxDecoration(
        color: colors,

        image: DecorationImage(image: AssetImage(img), fit: BoxFit.fill),
        shape: BoxShape.circle,
        
      ),
      


    );
  }
}
