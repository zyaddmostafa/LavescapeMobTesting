import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../../../core/theme/app_text_styles.dart';

class CustomPhoneInputField extends StatefulWidget {
  final Function(String)? onChanged;

  const CustomPhoneInputField({super.key, this.onChanged});

  @override
  State<CustomPhoneInputField> createState() => _CustomPhoneInputFieldState();
}

class _CustomPhoneInputFieldState extends State<CustomPhoneInputField> {
  bool hasError = false;
  String? errorMessage;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 38.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            border: Border.all(
              color: hasError ? Colors.red : Colors.grey.shade300,
              width: hasError ? 2 : 1,
            ),
          ),
          child: IntlPhoneField(
            validator: (value) {
              if (value == null || value.number.isEmpty) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  if (mounted) {
                    setState(() {
                      hasError = true;
                      errorMessage = 'Please enter your phone number';
                    });
                  }
                });
                return '';
              }
              WidgetsBinding.instance.addPostFrameCallback((_) {
                if (mounted) {
                  setState(() {
                    hasError = false;
                    errorMessage = null;
                  });
                }
              });
              return null;
            },
            decoration: InputDecoration(
              hintText: '+1 (000) 000-0000',
              hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 16),
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              focusedErrorBorder: InputBorder.none,
              errorStyle: const TextStyle(fontSize: 0, height: 0),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              counterText: '', // Remove counter
            ),
            initialCountryCode: 'US',
            showCountryFlag: true,
            showDropdownIcon: true,
            dropdownIcon: Icon(
              Icons.keyboard_arrow_down,
              color: Colors.grey.shade600,
              size: 24,
            ),
            flagsButtonPadding: const EdgeInsets.only(left: 16, right: 4),
            dropdownTextStyle: AppTextStyles.font15SemiBoldLabelColor,
            style: AppTextStyles.font14RegularBlack,
            onChanged: (phone) {
              if (widget.onChanged != null) {
                widget.onChanged!(phone.completeNumber);
              }
              // Clear error when user starts typing
              if (hasError && phone.number.isNotEmpty) {
                setState(() {
                  hasError = false;
                });
              }
            },
            // Customize country picker dialog
            pickerDialogStyle: PickerDialogStyle(
              backgroundColor: Colors.white,
              searchFieldInputDecoration: const InputDecoration(
                hintText: 'Search Country',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
              ),
            ),
          ),
        ),
        if (hasError && errorMessage != null)
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 12),
            child: Text(
              errorMessage!,
              style: TextStyle(fontSize: 12, color: Colors.red.shade700),
            ),
          ),
      ],
    );
  }
}
