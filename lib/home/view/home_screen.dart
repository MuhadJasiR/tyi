import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:tyi/constants/colors/Colors.dart';
import 'package:tyi/constants/size/size.dart';
import 'package:tyi/home/controller/provider/local_functions.dart';
import 'package:tyi/home/view/widgets/custom_card.dart';
import 'package:tyi/home/view/widgets/custom_service_card.dart';
import 'package:tyi/home/view/widgets/custom_widgets.dart';
import 'package:tyi/home/view/widgets/footer_card.dart';
import 'package:tyi/home/view/widgets/line_indicator.dart';

import 'widgets/custom_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 340.h,
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 275,
                          width: double.infinity,
                          color: kMainColor.withOpacity(0.2),
                          child: Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          height: 153,
                                          width: 207,
                                          child: Image.asset(
                                              "assets/tyi_logo.png"),
                                        ),
                                      ],
                                    ),
                                    Positioned(
                                      left: 0,
                                      bottom: 50,
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.grid_view_sharp,
                                            size: 35,
                                            color: kMainColor,
                                          )),
                                    ),
                                  ],
                                ),
                                const Text(
                                  "Namaste",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFC89B61)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: 206,
                      left: 0,
                      right: 0,
                      child: Consumer<LocalFunctionsProvider>(
                        builder: (context, value, child) => Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: PageStorage(
                                bucket: PageStorageBucket(),
                                child: CarouselSlider(
                                  options: CarouselOptions(
                                    enlargeCenterPage: true,
                                    viewportFraction: 1,
                                    height: 151.0.h,
                                    onPageChanged: (index, reason) {
                                      value.currentIndex = index;
                                      value.notifyListeners();
                                    },
                                  ),
                                  items: [
                                    1,
                                    2,
                                    3,
                                  ].map((i) {
                                    return Builder(
                                      builder: (BuildContext context) {
                                        return Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 5.0),
                                            decoration: BoxDecoration(
                                                color: const Color.fromARGB(
                                                        255, 253, 251, 246)
                                                    .withOpacity(0.7),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(7.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                child: Image.asset(
                                                  "assets/image1.png",
                                                  fit: BoxFit.fitWidth,
                                                ),
                                              ),
                                            ));
                                      },
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: lineIndicators(3, value.currentIndex),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          CustomPurpleContainer(
            imageUrl: const ['assets/image4.png', 'assets/image6.png'],
            title: const ['Decoration', "Party arrangement"],
          ),
          kHeight(10),
          CustomPurpleContainer(
            imageUrl: const ['assets/image5.png', 'assets/image7.png'],
            title: const ['Wedding', "Corporate events"],
          ),
          kHeight(10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: Row(
              children: [
                const Text(
                  "Superior event services\nProviders",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: kFontColor),
                ),
                const Spacer(),
                const Text(
                  "view all",
                  style: TextStyle(
                      color: Color(0xFFC89B61),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                kWidth(10),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: kMainColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.white,
                    size: 15,
                  ),
                )
              ],
            ),
          ),
          kHeight(10),
          const CustomCards(),
          kHeight(10),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(kMainColor),
                    fixedSize:
                        MaterialStateProperty.all(Size(double.infinity, 40.h))),
                onPressed: () {},
                child: const Text("Quick Service Request")),
          ),
          const CustomText(
            text: 'Extension Services',
          ),
          kHeight(10),
          const CustomServiceCards(
            imageUrl: "assets/image8.png",
            title: 'Seasonal Celebration Decor',
          ),
          kHeight(10),
          const CustomServiceCards(
            imageUrl: "assets/image10.png",
            title: 'Mehandi Makers',
          ),
          kHeight(10),
          const CustomServiceCards(
            imageUrl: "assets/image9.png",
            title: 'Sports and Hobby Celebrations',
          ),
          kHeight(10),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 13),
            child: Text(
              "People Choosing Us",
              style: TextStyle(
                  fontSize: 23, fontWeight: FontWeight.bold, color: kFontColor),
            ),
          ),
          const FooterCard(),
          kHeight(10)
        ],
      ),
    );
  }
}
