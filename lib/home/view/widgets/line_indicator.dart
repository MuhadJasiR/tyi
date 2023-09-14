import 'package:flutter/material.dart';

List<Widget> lineIndicators(int count, int index) {
  List<Widget> indicators = [];
  for (int i = 0; i < count; i++) {
    indicators.add(
      Container(
        width: 30,
        height: 5,
        margin: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: index == i ? const Color(0xFFC89B61) : Colors.grey,
        ),
      ),
    );
  }
  return indicators;
}
