import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:tyi/constants/colors/Colors.dart';

class CustomCalender extends StatefulWidget {
  const CustomCalender({super.key});

  @override
  State<CustomCalender> createState() => _CustomCalenderState();
}

DateTime _focusedDay = DateTime.now();
List<DateTime> _selectedDays = [];

class _CustomCalenderState extends State<CustomCalender> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TableCalendar(
        rangeSelectionMode: RangeSelectionMode.toggledOn,
        headerStyle:
            const HeaderStyle(formatButtonVisible: false, titleCentered: true),
        calendarBuilders: CalendarBuilders(
          selectedBuilder: (context, date, _) {
            bool isPreviousDaySelected =
                _selectedDays.contains(date.subtract(const Duration(days: 1)));
            bool isNextDaySelected =
                _selectedDays.contains(date.add(const Duration(days: 1)));

            BorderRadius? borderRadius;

            if (isPreviousDaySelected && isNextDaySelected) {
              borderRadius = const BorderRadius.all(Radius.circular(0));
            } else if (!isPreviousDaySelected && isNextDaySelected) {
              borderRadius = const BorderRadius.only(
                  topLeft: Radius.circular(50),
                  bottomLeft: Radius.circular(50));
            } else if (isPreviousDaySelected && !isNextDaySelected) {
              borderRadius = const BorderRadius.only(
                  topRight: Radius.circular(50),
                  bottomRight: Radius.circular(50));
            } else {
              borderRadius = const BorderRadius.all(Radius.circular(50));
            }

            return Container(
              decoration:
                  BoxDecoration(color: darkblue, borderRadius: borderRadius),
              width: 80,
              height: 40,
              child: Center(
                child: Text(
                  '${date.day}',
                  style: const TextStyle(color: Colors.white)
                      .copyWith(fontSize: 16.0),
                ),
              ),
            );
          },
        ),
        calendarFormat: CalendarFormat.month,
        selectedDayPredicate: (day) {
          return _selectedDays.contains(day);
        },
        onDaySelected: (selectedDay, focusedDay) {
          if (!_selectedDays.contains(selectedDay)) {
            setState(() {
              _selectedDays.add(selectedDay);
            });
          } else {
            setState(() {
              _selectedDays.remove(selectedDay);
            });
          }

          setState(() {
            _focusedDay = focusedDay;
          });
        },
        focusedDay: _focusedDay,
        firstDay: DateTime.utc(2023, 9, 19),
        lastDay: DateTime.utc(2024, 9, 19),
      ),
    );
  }
}
