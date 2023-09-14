import 'package:flutter/material.dart';

import '../../../constants/colors/Colors.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: Text(
        text,
        style: const TextStyle(
            fontSize: 23, fontWeight: FontWeight.bold, color: kFontColor),
      ),
    );
  }
}
