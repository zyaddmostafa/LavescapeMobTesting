import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/app_text_styles.dart';

class OTPField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final Function(String)? onChanged;
  final VoidCallback? onTap;

  const OTPField({
    super.key,
    required this.controller,
    required this.focusNode,
    this.onChanged,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.w,
      height: 42.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        border: Border.all(color: Colors.grey.shade300, width: 1.5),
      ),
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        textAlign: TextAlign.center,
        style: AppTextStyles.font24SemiBoldWhite,
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          hintText: '⚬',
          hintStyle: AppTextStyles.font15MediumGrey,
          border: InputBorder.none,
          contentPadding: EdgeInsets.zero,
        ),

        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(1),
        ],
        onChanged: onChanged,
      ),
    );
  }
}
