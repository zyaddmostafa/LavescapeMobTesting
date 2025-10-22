import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/app_text_styles.dart';

class GuestFavoriteCard extends StatelessWidget {
  const GuestFavoriteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 88.w,
      height: 24.h,
      decoration: ShapeDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.01, -0.00),
          end: const Alignment(1.00, 1.00),
          colors: [
            Colors.white.withValues(alpha: 0.80),
            const Color(0x4CF1F1F1),
          ],
        ),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(12.r)),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x0C000000),
            blurRadius: 2,
            offset: Offset(0, 1),
            spreadRadius: 0,
          ),
        ],
      ),
      child: const Padding(
        padding: EdgeInsets.all(4.0),
        child: FittedBox(
          child: Text('Guest Favorite', style: AppTextStyles.font12MediumBlack),
        ),
      ),
    );
  }
}
