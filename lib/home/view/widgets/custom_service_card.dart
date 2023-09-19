import 'package:flutter/material.dart';

import '../../../constants/colors/Colors.dart';

class CustomServiceCards extends StatelessWidget {
  const CustomServiceCards({
    super.key,
    required this.imageUrl,
    required this.title,
  });

  final String imageUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey.shade300, width: 2)),
        height: 64,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 70,
              width: 70,
              child: Image.asset(imageUrl),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: kFontColor),
                ),
                const Text(
                  "Make birthdays magical with our creative\ndecorations that turn dreams into reality",
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
            Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                  color: kMainColor, borderRadius: BorderRadius.circular(5)),
              child: const Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.white,
                size: 15,
              ),
            )
          ],
        ),
      ),
    );
  }
}
