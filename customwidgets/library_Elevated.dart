import 'package:flutter/material.dart';

class libra_Elevated extends StatelessWidget {
  final String buttonname;
  final VoidCallback onPress;
  final Color backgroundcolor;
  final Color textcolor;

  final double sizew;
  final double sizeh;

  const libra_Elevated({
    super.key,
    required this.buttonname,
    required this.onPress,
    this.backgroundcolor = const Color.fromARGB(255, 28, 27, 27),
    this.textcolor = Colors.white,

    this.sizew = 150,
    this.sizeh = 33,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundcolor,
        foregroundColor: textcolor,

        minimumSize: Size(sizew, sizeh),
      ),
      child: Text(buttonname),
    );
  }
}
