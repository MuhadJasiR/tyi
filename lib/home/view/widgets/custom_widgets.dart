import 'package:flutter/material.dart';

import '../../../constants/size/size.dart';

class CustomPurpleContainer extends StatelessWidget {
  const CustomPurpleContainer(
      {super.key, required this.imageUrl, required this.title});

  final List<String> title;
  final List<String> imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 40,
              color: const Color(0xFFEEE8FF),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 43,
                    height: 43,
                    child: Image.asset(
                      imageUrl[0],
                    ),
                  ),
                  Text(
                    title[0],
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF7049E9),
                        fontSize: 11),
                  )
                ],
              ),
            ),
          ),
          kWidth(10),
          Expanded(
            child: Container(
              height: 40,
              color: const Color(0xFFEEE8FF),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: Image.asset(imageUrl[1]),
                  ),
                  Text(
                    title[1],
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF7049E9),
                        fontSize: 11),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
