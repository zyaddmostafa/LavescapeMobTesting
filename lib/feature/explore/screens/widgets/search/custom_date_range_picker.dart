import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CustomDateRangePicker extends StatefulWidget {
  final Function(DateTime? start, DateTime? end)? onDateRangeSelected;

  const CustomDateRangePicker({super.key, this.onDateRangeSelected});

  @override
  _CustomDateRangePickerState createState() => _CustomDateRangePickerState();
}

class _CustomDateRangePickerState extends State<CustomDateRangePicker> {
  DateTime _focusedDay = DateTime(2025, 8, 10);
  DateTime? _rangeStart = DateTime(2025, 8, 10);
  DateTime? _rangeEnd = DateTime(2025, 8, 31);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      padding: EdgeInsets.all(16),
      child: TableCalendar(
        firstDay: DateTime(2020),
        lastDay: DateTime(2030),
        focusedDay: _focusedDay,
        rangeStartDay: _rangeStart,
        rangeEndDay: _rangeEnd,
        rangeSelectionMode: RangeSelectionMode.toggledOn,
        calendarFormat: CalendarFormat.month,
        headerStyle: HeaderStyle(
          formatButtonVisible: false,
          titleCentered: true,
          titleTextStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
          leftChevronIcon: Icon(Icons.chevron_left, color: Colors.grey),
          rightChevronIcon: Icon(Icons.chevron_right, color: Colors.grey),
          headerPadding: EdgeInsets.only(bottom: 16),
        ),
        daysOfWeekStyle: DaysOfWeekStyle(
          weekdayStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Colors.grey[600],
          ),
          weekendStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Colors.grey[600],
          ),
        ),
        calendarStyle: CalendarStyle(
          // Default day style
          defaultTextStyle: TextStyle(fontSize: 14, color: Colors.black),
          // Weekend style
          weekendTextStyle: TextStyle(fontSize: 14, color: Colors.black),
          // Outside month days
          outsideTextStyle: TextStyle(fontSize: 14, color: Colors.grey[300]),
          // Range start/end decoration
          rangeStartDecoration: BoxDecoration(
            color: Color(0xFF7C3AED), // Purple
            shape: BoxShape.circle,
          ),
          rangeEndDecoration: BoxDecoration(
            color: Color(0xFF7C3AED), // Purple
            shape: BoxShape.circle,
          ),
          // Range middle days
          rangeHighlightColor: Color(0xFF7C3AED).withOpacity(0.1),
          withinRangeTextStyle: TextStyle(fontSize: 14, color: Colors.black),
          // Today decoration (if needed)
          todayDecoration: BoxDecoration(
            color: Colors.transparent,
            shape: BoxShape.circle,
          ),
          todayTextStyle: TextStyle(fontSize: 14, color: Colors.black),
          // Selected decoration
          selectedDecoration: BoxDecoration(
            color: Color(0xFF7C3AED),
            shape: BoxShape.circle,
          ),
          selectedTextStyle: TextStyle(
            fontSize: 14,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
          // Cell margin
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
