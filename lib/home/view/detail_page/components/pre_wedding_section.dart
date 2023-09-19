import 'package:flutter/material.dart';

import '../../../../constants/colors/Colors.dart';
import '../../../../constants/size/size.dart';
import '../../../../constants/style/style.dart';

class PreWeddingSection extends StatelessWidget {
  const PreWeddingSection({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Pre Wedding",
                    style: CustomTextStyles().heading(textColorHead),
                  ),
                  const Text(
                    "make birthday magical with our\ncreative decoration",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
              kWidth(10),
              Container(
                padding: const EdgeInsets.all(10),
                height: size.height * 0.04,
                color: blueColor,
                child: const Center(
                    child: Text(
                  "Limited Exclusive Deal",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: darkblue),
                )),
              )
            ],
          ),
          kHeight(10),
          const Divider(
            thickness: 1.5,
          ),
          kHeight(10),
        ],
      ),
    );
  }
}
