import 'package:flutter/material.dart';
import 'package:flutter_application_1/color/color.dart';

// ignore: must_be_immutable
class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;

  ResponsiveButton({Key? key, this.width, this.isResponsive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.buttonbg,
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset("img/buttonicon.png")
      ]), // Use widget.width to access the width property
      // Add other properties or child widgets as needed
    );
  }
}
