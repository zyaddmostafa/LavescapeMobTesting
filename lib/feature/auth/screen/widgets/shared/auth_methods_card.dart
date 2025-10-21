import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/helpers/app_assets.dart';
import '../../../../../core/theme/app_color.dart';

class AuthMethodsCard extends StatelessWidget {
  final String assetName;
  const AuthMethodsCard({super.key, required this.assetName});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 81.w,
      height: 48.h,
      padding: const EdgeInsets.all(14),
      clipBehavior: Clip.antiAlias,
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
      child: SvgPicture.asset(assetName),
    );
  }
}
