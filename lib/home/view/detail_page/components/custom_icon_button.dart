import 'package:flutter/material.dart';

import '../../../../constants/colors/Colors.dart';
import '../../../../constants/size/size.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                color: blueColor, borderRadius: BorderRadius.circular(10)),
            height: 50,
            width: 50,
            child: const Icon(
              Icons.mail,
              color: darkblue,
            ),
          ),
          kWidth(15),
          Container(
            decoration: BoxDecoration(
                color: blueColor, borderRadius: BorderRadius.circular(10)),
            height: 50,
            width: 50,
            child: const Icon(
              Icons.phone,
              color: darkblue,
            ),
          ),
        ],
      ),
    );
  }
}
