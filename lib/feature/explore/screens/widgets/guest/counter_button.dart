import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/theme/app_color.dart';

class CounterButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CounterButton({super.key, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 24.w,
        height: 24.h,
        decoration: const ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: AppColor.componentsColor),
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          shadows: [
            BoxShadow(
              color: Color(0x0C000000),
              blurRadius: 2,
              offset: Offset(0, 1),
              spreadRadius: 0,
            ),
          ],
        ),
        child: Icon(icon, size: 16, color: AppColor.secondary),
      ),
    );
  }
}
