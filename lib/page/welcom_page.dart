import 'package:flutter/material.dart';
import 'package:flutter_application_1/color/color.dart';
import 'package:flutter_application_1/widgets/app_large_text.dart';
import 'package:flutter_application_1/widgets/app_text.dart';
import 'package:flutter_application_1/widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "welcome1.png",
    "welcome2.png",
  ];
  List text = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (_, index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
                image: DecorationImage(
              // ignore: prefer_interpolation_to_compose_strings
              image: AssetImage("img/" + images[index]),
            )),
            child: Container(
              margin: const EdgeInsets.only(top: 550, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(text: "FEEL THE SENSATION OF"),
                      AppText(
                        text: "HEAVEN IN THE WORLD",
                        size: 25,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ResponsiveButton(),
                    ],
                  ),
                  Column(
                      children: List.generate(
                    3,
                    (indexDots) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 2),
                        width: 8,
                        height: indexDots == indexDots ? 25 : 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: index == indexDots
                              ? AppColors.buttonbg
                              : AppColors.buttonbg.withOpacity(0.3),
                        ),
                      );
                    },
                  ))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
