import 'package:flutter/material.dart';

class sub_ele extends StatelessWidget {
  final String buttonname;
  final VoidCallback onPress;
  final Color backgroundcolor;
  final Color textcolor;
  final double borderradius;
  final double sizew;
  final double sizeh;

  const sub_ele({
    super.key,
    required this.buttonname,
    required this.onPress,
    this.backgroundcolor = const Color.fromARGB(255, 28, 27, 27),
    this.textcolor = Colors.white,
    this.borderradius = 10,
    this.sizew = 40,
    this.sizeh = 35,
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
        minimumSize: Size(sizew, sizeh),
      ),
      child: Text(buttonname),
    );
  }
}
