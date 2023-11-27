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
              margin: const EdgeInsets.only(top: 450, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(text: "FEEL THE SENSATION OF"),
                      AppText(
                        text: "HEAVEN IN THE WORLD",
                        size: 28,
                      ),
                      // ignore: prefer_const_constructors
                      SizedBox(
                        height: 2,
                      ),
                      // ignore: sized_box_for_whitespace
                      Container(
                        width: 250,
                        child: AppLargeText(
                          text: "Welcome To Indonesia",
                          size: 14,
                        ),
                      ),
                      // ignore: prefer_const_constructors
                      SizedBox(
                        height: 40,
                      ),
                      ResponsiveButton()
                    ],
                  ),
                  Column(
                      children: List.generate(
                    2,
                    (indexDots) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 2),
                        width: 8,
                        height: indexDots == indexDots ? 20 : 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
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
