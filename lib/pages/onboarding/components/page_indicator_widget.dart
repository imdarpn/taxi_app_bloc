import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taxi_customer_demo/core/styles/app_colors.dart';
import 'package:taxi_customer_demo/utils/extensions.dart';

class PageIndicatorWidget extends StatelessWidget {
  final int indicatorCount;
  final int currentPageIndex;

  const PageIndicatorWidget({
    super.key,
    required this.indicatorCount,
    required this.currentPageIndex,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 14.h,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: indicatorCount,
        itemBuilder: (context, index) {
          return index == currentPageIndex
              ? _activeIndicator()
                : _inActiveIndicator().paddingSymmetric(horizontal: 8.w);
        },
      ),
    );
  }

  Widget _inActiveIndicator() {
    return Container(
      width: 14.w,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        border: Border.all(
          color: AppColors.fieldBorderColor,
        ),
        shape: BoxShape.circle,
      ),
    );
  }

  Widget _activeIndicator() {
    return Container(
      width: 56.w,
      decoration: BoxDecoration(
        color: AppColors.activeIndicatorColor,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: AppColors.fieldBorderColor,
        ),
      ),
    );
  }
}
