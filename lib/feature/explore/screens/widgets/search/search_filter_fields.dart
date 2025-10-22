import 'package:flutter/material.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import 'package:intl/intl.dart';
import 'custom_date_range_picker.dart';
import 'date_text_field.dart';
import 'guest_text_field.dart';

class SearchFilterFields extends StatefulWidget {
  final TextEditingController? dateController;
  final TextEditingController? guestController;
  final TextEditingController? cityController;

  const SearchFilterFields({
    super.key,
    this.dateController,
    this.guestController,
    this.cityController,
  });

  @override
  State<SearchFilterFields> createState() => _SearchFilterFieldsState();
}

class _SearchFilterFieldsState extends State<SearchFilterFields> {
  bool _showDatePicker = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppTextFormField(controller: widget.cityController, hintText: 'City'),
          verticalSpace(12),
          DateTextField(
            controller: widget.dateController,
            onTap: () {
              setState(() {
                _showDatePicker = !_showDatePicker;
              });
            },
          ),
          if (_showDatePicker) ...[
            verticalSpace(16),
            CustomDateRangePicker(
              onDateRangeSelected: (start, end) {
                if (start != null && end != null) {
                  final startDate = DateFormat('MMM d').format(start);
                  final endDate = DateFormat('d').format(end);
                  widget.dateController?.text = '$startDate-$endDate';
                } else if (start != null) {
                  final startDate = DateFormat('MMM d').format(start);
                  widget.dateController?.text = startDate;
                }
              },
            ),
          ],
          verticalSpace(12),
          GuestTextField(controller: widget.guestController),
          verticalSpace(30),
        ],
      ),
    );
  }
}
