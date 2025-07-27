import 'package:flutter/material.dart';

class cus_button extends StatelessWidget {
  final String buttonname;
  final VoidCallback onPress;
  final Color backgroundcolor;
  final Color textcolor;
  final double borderradius;

  const cus_button({
    super.key,
    required this.buttonname,
    required this.onPress,
    this.backgroundcolor = Colors.lightBlue,
    this.textcolor = Colors.white,
    this.borderradius = 14.00,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundcolor,
        foregroundColor: textcolor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderradius),
        ),
      ),
      child: Text(buttonname),
    );
  }
}
