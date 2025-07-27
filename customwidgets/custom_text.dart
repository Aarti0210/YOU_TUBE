import 'package:flutter/material.dart';
import 'package:you_tube/colors/app_colors.dart';


class cus_text extends StatelessWidget {
  final Color colors;
  final FontWeight weight;
  final String text;
  // final VoidCallbackAction onpress;

  final double size;
  const cus_text({
    super.key,
    this.colors = AppColors.secondarycolor,
    this.weight = FontWeight.w700,
    required this.size,
    required this.text,
    // required this.onpress,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,

      style: TextStyle(fontWeight: weight, color: colors, fontSize: size),
    );
  }
}
