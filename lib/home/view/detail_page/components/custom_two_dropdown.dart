import 'package:flutter/material.dart';

import '../../../../constants/colors/Colors.dart';
import '../../../../constants/size/size.dart';

class CustomTwoDropdown extends StatefulWidget {
  const CustomTwoDropdown({super.key});

  @override
  State<CustomTwoDropdown> createState() => _CustomTwoDropdownState();
}

String? selectedRange;

class _CustomTwoDropdownState extends State<CustomTwoDropdown> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300, width: 1.5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  // isExpanded: true,
                  value: selectedRange,
                  icon: const Icon(Icons.arrow_drop_down),
                  iconSize: 24,
                  elevation: 16,
                  hint: const Row(
                    children: [
                      Text("Select Service",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey)),
                      SizedBox(width: 10),
                    ],
                  ),
                  items: <String>['decorations', 'wedding', 'birthday party']
                      .map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      selectedRange = newValue;
                    });
                  },
                ),
              ),
            ),
          ),
          kWidth(10),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300, width: 1.5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  // isExpanded: true,
                  value: selectedRange,
                  icon: const Icon(Icons.arrow_drop_down),
                  iconSize: 24,
                  elevation: 16,
                  hint: const Row(
                    children: [
                      Text("Select Service",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey)),
                      SizedBox(width: 10),
                    ],
                  ),
                  items: <String>['decorations', 'wedding', 'birthday party']
                      .map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      selectedRange = newValue;
                    });
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
