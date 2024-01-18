import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/common/common_methods.dart';
import '../../../core/common/widgets/common_text.dart';
import '../../../core/styles/app_colors.dart';
import 'package:taxi_customer_demo/l10n/localization.dart';
import 'package:taxi_customer_demo/utils/extensions.dart';

import '../../../../../core/common/app_constants/image_constants.dart';
import '../../../../../core/styles/font_constants.dart';

class DrawerItems extends StatelessWidget {
  final Function onTap;
  final Function? closeDrawer;

  const DrawerItems({super.key, required this.onTap, this.closeDrawer});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListTileTheme(
        textColor: Colors.white,
        iconColor: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            GestureDetector(
              onTap: () {
                closeDrawer!();
              },
              child: SvgPicture.asset(
                ImageConstants.menuIcon,
                width: 24.w,
                height: 26.h,
              ).paddingOnly(top: 20.w, bottom: 20.w),
            ),
            Column(
              children: [
                Container(
                  width: 128.0,
                  height: 128.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.whiteColor, width: 3),
                    shape: BoxShape.circle,
                  ),
                  child: ClipOval(
                    child: SizedBox.fromSize(
                      size: const Size.fromRadius(48), // Image radius
                      child: Image.asset(
                        ImageConstants.profile,
                        fit: BoxFit.cover,
                        width: 278.w,
                        height: 256.h,
                      ),
                    ),
                  ),
                ),
                CommonText(
                  text: context.translate.fixName,
                  fontFamily: FontFamilyConstants.fontName,
                  color: AppColors.whiteColor,
                  fontSize: FontConstants.font_20,
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.w700,
                ).paddingSymmetric(vertical: 16.h, horizontal: 10.w),
              ],
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: CommonMethods.getDrawerItemsModelList().length,
                  itemBuilder: (_, index) {
                    return InkWell(
                      onTap: () => onTap(index),
                      child: CommonText(
                        text: CommonMethods.getDrawerItemsModelList()[index]
                            .title,
                        fontFamily: FontFamilyConstants.fontName,
                        color: AppColors.whiteColor,
                        fontSize: FontConstants.font_16,
                        textAlign: TextAlign.start,
                        fontWeight: FontWeight.w500,
                      ).paddingSymmetric(vertical: 16.h, horizontal: 8.w),
                    );
                  }),
            ),
            const SizedBox(
              height: 5,
            )
          ],
        ),
      ).paddingOnly(left: 20),
    );
  }
}
