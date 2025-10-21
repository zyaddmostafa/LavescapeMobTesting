import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/app_color.dart';
import '../theme/app_text_styles.dart';

class CustomAppButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final TextStyle? labelTextStyle;
  final BorderSide? borderSide;
  const CustomAppButton({
    super.key,
    this.label = 'Continue',
    this.onPressed,
    this.backgroundColor,
    this.labelTextStyle,
    this.borderSide,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? AppColor.primary,
          minimumSize: const Size(double.infinity, 50),
          elevation: 0,
          side: borderSide,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
        ),
        child: Text(
          label,
          style: labelTextStyle ?? AppTextStyles.font15SemiBoldWhite,
        ),
      ),
    );
  }
}
