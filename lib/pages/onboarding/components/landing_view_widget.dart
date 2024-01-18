import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taxi_customer_demo/core/common/view_models/onboarding_model.dart';
import 'package:taxi_customer_demo/utils/extensions.dart';

import '../../../core/common/widgets/widgets.dart';
import '../../../core/styles/app_colors.dart';
import '../../../core/styles/font_constants.dart';

class LandingViewWidget extends StatelessWidget {
  final OnboardingModel onboardingModel;

  const LandingViewWidget({
    super.key,
    required this.onboardingModel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        CommonText(
          text: onboardingModel.titleText,
          fontFamily: FontFamilyConstants.fontFamilyMedel,
          fontSize: FontConstants.font_42,
        ),
        CommonText(
          text: onboardingModel.subText,
          color: AppColors.subTextColor,
          fontSize: FontConstants.font_16,
          textAlign: TextAlign.center,
        ).paddingSymmetric(vertical: 16.h, horizontal: 8.w),
        SvgPicture.asset(
          onboardingModel.imagePath,
          width: 269.w,
          height: 298.h,
        ),
      ],
    );
  }
}
