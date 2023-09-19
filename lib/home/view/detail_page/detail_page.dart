import 'package:flutter/material.dart';
import 'package:tyi/constants/colors/Colors.dart';
import 'package:tyi/constants/size/size.dart';
import 'package:tyi/home/view/detail_page/components/Custom_calender.dart';
import 'package:tyi/home/view/detail_page/components/custom_two_dropdown.dart';
import 'package:tyi/home/view/detail_page/components/dropdown_button.dart';

import '../../../constants/style/style.dart';
import 'components/Custom_text_form_field.dart';
import 'components/custom_icon_button.dart';
import 'components/custom_welcome_card.dart';
import 'components/pre_wedding_section.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          //top section
          CustomWelcomeImage(size: size),
          //section under the image
          PreWeddingSection(size: size),
          // dropdown under the divider line
          CustomDropdownButton(),
          // custom calender after the dropdown
          const CustomCalender(),
          // textFormField after the calender
          const CustomTextFormField(),
          kHeight(10),
          //two dropdown in a row
          const CustomTwoDropdown(),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(darkblue),
                    fixedSize: MaterialStateProperty.all(
                        const Size(double.infinity, 40))),
                onPressed: () {},
                child: const Text("SEND CUSTOM DETAILS")),
          ),
          //iconButton in row
          const CustomIconButton(),
          kHeight(10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: Text(
              "Service Description",
              style: CustomTextStyles().heading(textColorHead),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(13.0),
            child: Text(
                "Step into a whimsical world crafted just for the birthday star! Our birthday decorations capture the magic of the moment, from sparkling streamers that dance in the wind to shimmering balloons that light up the room. Tables adorned with themed centerpieces are complemented by wall hangings that tell tales of birthday wonders. From pastel hues for a subtle, classic look to vibrant bursts of colors for those who love to make a statement, our decoration ensures the day feels as special as the person being celebrated. Each piece is chosen with care"),
          )
        ],
      ),
    );
  }
}
