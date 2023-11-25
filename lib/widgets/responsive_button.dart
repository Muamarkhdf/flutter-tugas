import 'package:flutter/material.dart';
import 'package:flutter_application_1/color/color.dart';

// ignore: must_be_immutable
class ResponsiveButton extends StatefulWidget {
  bool? isResponsive;
  double? width;

  ResponsiveButton({Key? key, this.width, this.isResponsive = false})
      : super(key: key);

  @override
  State<ResponsiveButton> createState() => ResponsiveButtonState();
}

class ResponsiveButtonState extends State<ResponsiveButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.buttonbg,
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset("img/buttonicon.png")
      ]), // Use widget.width to access the width property
      // Add other properties or child widgets as needed
    );
  }
}
