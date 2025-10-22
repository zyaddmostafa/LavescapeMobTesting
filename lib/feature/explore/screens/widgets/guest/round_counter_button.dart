import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/app_color.dart';

class RoundCounterButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final bool enabled;

  const RoundCounterButton({
    super.key,
    required this.icon,
    required this.onPressed,
    required this.enabled,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: enabled ? onPressed : null,
      borderRadius: BorderRadius.circular(20.r),
      child: Container(
        width: 32.w,
        height: 32.h,
        decoration: const ShapeDecoration(
          shape: OvalBorder(
            side: BorderSide(width: 1, color: AppColor.componentsColor),
          ),
        ),
        child: Icon(
          icon,
          size: 18.sp,
          color: enabled ? Colors.black87 : Colors.grey[400],
        ),
      ),
    );
  }
}
