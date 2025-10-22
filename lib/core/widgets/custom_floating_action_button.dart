import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/app_text_styles.dart';

class CustomFloatingActionButton extends StatelessWidget {
  final String title;
  final Color color;
  final Widget icon;
  final VoidCallback? onPressed;

  const CustomFloatingActionButton({
    super.key,
    required this.title,
    required this.icon,
    this.color = const Color(0xFF8B3EFF), // Default purple
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32.h,
      width: 100.w,
      child: FloatingActionButton.extended(
        onPressed: onPressed,
        backgroundColor: color,
        elevation: 2,
        icon: icon,
        label: Text(title, style: AppTextStyles.font14SemiBoldWhite),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      ),
    );
  }
}
