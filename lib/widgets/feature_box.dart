import 'package:flutter/material.dart';
import 'package:flutter_voice_assistant/constants/fontfamily.dart';
import 'package:flutter_voice_assistant/theme/pallete.dart';

class FeatureBox extends StatelessWidget {
  final Color color;
  final String headerText;
  final String bodyText;

  const FeatureBox({
    super.key,
    required this.color,
    required this.headerText,
    required this.bodyText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20).copyWith(left: 15),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                headerText,
                style: const TextStyle(
                  fontFamily: FontFamily.fontFamily,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Pallete.blackColor,
                ),
              ),
            ),
            const SizedBox(height: 3),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                bodyText,
                style: const TextStyle(
                  fontFamily: FontFamily.fontFamily,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Pallete.blackColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
