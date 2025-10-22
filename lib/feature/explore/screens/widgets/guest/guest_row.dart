import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GuestRow extends StatelessWidget {
  final String label;
  final String subtitle;
  final int count;
  final VoidCallback onDecrement;
  final VoidCallback onIncrement;
  final bool canDecrement;

  const GuestRow({
    super.key,
    required this.label,
    required this.subtitle,
    required this.count,
    required this.onDecrement,
    required this.onIncrement,
    this.canDecrement = true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 4.h),
            Text(
              subtitle,
              style: TextStyle(fontSize: 13.sp, color: Colors.grey[600]),
            ),
          ],
        ),
        Row(
          children: [
            RoundCounterButton(
              icon: Icons.remove,
              onPressed: onDecrement,
              enabled: canDecrement,
            ),
            SizedBox(width: 16.w),
            SizedBox(
              width: 30.w,
              child: Text(
                '$count',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(width: 16.w),
            RoundCounterButton(
              icon: Icons.add,
              onPressed: onIncrement,
              enabled: true,
            ),
          ],
        ),
      ],
    );
  }
}

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
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: enabled ? Colors.grey[400]! : Colors.grey[300]!,
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
