import 'package:flutter/material.dart';

import '../../../../constants/colors/Colors.dart';

class CustomWelcomeImage extends StatelessWidget {
  const CustomWelcomeImage({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: size.height * 0.3,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://static.wixstatic.com/media/44373b_74282829933441d693c1a1bb0cad3e11~mv2.jpg/v1/crop/x_394,y_0,w_1228,h_1512/fill/w_640,h_586,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/circle%20backdrop%20stand.jpg"),
                  fit: BoxFit.cover)),
        ),
        Positioned(
          right: 10,
          top: (size.height * 0.3) / 2 - 22.5,
          child: Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
                color: kMainColor, borderRadius: BorderRadius.circular(5)),
            child: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.white,
              size: 25,
            ),
          ),
        ),
        Positioned(
          bottom: -1,
          child: Container(
            height: 35,
            width: size.width,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(40))),
          ),
        )
      ],
    );
  }
}
