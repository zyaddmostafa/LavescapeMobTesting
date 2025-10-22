import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/helpers/app_assets.dart';

class LavescapeLogo extends StatelessWidget {
  const LavescapeLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SvgPicture.asset(
        AppAssets.svgsLogoLavender,
        width: 166.w,
        height: 60.h,
      ),
    );
  }
}
