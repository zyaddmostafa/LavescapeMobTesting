import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../../../core/theme/app_color.dart';
import '../../../../../core/theme/app_text_styles.dart';

class CustomDateRangePicker extends StatefulWidget {
  final Function(DateTime? start, DateTime? end)? onDateRangeSelected;

  const CustomDateRangePicker({super.key, this.onDateRangeSelected});

  @override
  CustomDateRangePickerState createState() => CustomDateRangePickerState();
}

class CustomDateRangePickerState extends State<CustomDateRangePicker> {
  DateTime _focusedDay = DateTime(2025, 8, 10);
  DateTime? _rangeStart = DateTime(2025, 8, 10);
  DateTime? _rangeEnd = DateTime(2025, 8, 31);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: TableCalendar(
        firstDay: DateTime(2020),
        lastDay: DateTime(2030),
        focusedDay: _focusedDay,
        rangeStartDay: _rangeStart,
        rangeEndDay: _rangeEnd,
        rangeSelectionMode: RangeSelectionMode.toggledOn,
        calendarFormat: CalendarFormat.month,
        headerStyle: const HeaderStyle(
          formatButtonVisible: false,
          titleCentered: true,
          titleTextStyle: AppTextStyles.font18SemiBoldBlack,
          leftChevronIcon: Icon(Icons.chevron_left, color: Colors.grey),
          rightChevronIcon: Icon(Icons.chevron_right, color: Colors.grey),
          headerPadding: EdgeInsets.only(bottom: 16),
        ),
        daysOfWeekStyle: const DaysOfWeekStyle(
          weekdayStyle: AppTextStyles.font14RegularGrey,
          weekendStyle: AppTextStyles.font14RegularGrey,
        ),
        calendarStyle: const CalendarStyle(
          defaultTextStyle: AppTextStyles.font14MediumLabelColor,
          weekendTextStyle: AppTextStyles.font14MediumLabelColor,
          outsideTextStyle: AppTextStyles.font14RegularGrey,
          rangeStartDecoration: BoxDecoration(
            color: AppColor.primary,
            shape: BoxShape.circle,
          ),
          rangeEndDecoration: BoxDecoration(
            color: AppColor.primary,
            shape: BoxShape.circle,
          ),
          rangeHighlightColor: AppColor.componentLight,
          withinRangeTextStyle: AppTextStyles.font14MediumLabelColor,
          todayDecoration: BoxDecoration(
            color: Colors.transparent,
            shape: BoxShape.circle,
          ),
          todayTextStyle: AppTextStyles.font14MediumLabelColor,
          selectedDecoration: BoxDecoration(
            color: AppColor.primary,
            shape: BoxShape.circle,
          ),
          selectedTextStyle: AppTextStyles.font14SemiBoldWhite,
          cellMargin: EdgeInsets.all(4),
        ),
        onRangeSelected: (start, end, focusedDay) {
          setState(() {
            _rangeStart = start;
            _rangeEnd = end;
            _focusedDay = focusedDay;
          });
          widget.onDateRangeSelected?.call(start, end);
        },
        onPageChanged: (focusedDay) {
          _focusedDay = focusedDay;
        },
      ),
    );
  }
}
