import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taxi_customer_demo/core/common/app_constants/image_constants.dart';
import 'package:taxi_customer_demo/core/common/widgets/common_scaffold.dart';
import 'package:taxi_customer_demo/core/common/widgets/common_text.dart';
import 'package:taxi_customer_demo/core/styles/app_colors.dart';
import 'package:taxi_customer_demo/core/styles/font_constants.dart';
import 'package:taxi_customer_demo/l10n/localization.dart';
import 'package:taxi_customer_demo/utils/extensions.dart';

import '../../core/common/app_constants/string_constants.dart';
import '../../core/common/widgets/common_filled_button.dart';
import '../../core/common/widgets/common_text_field.dart';
import '../../core/styles/ui_constants.dart';

class ApplyCouponScreen extends StatefulWidget {
  const ApplyCouponScreen({super.key});

  @override
  State<ApplyCouponScreen> createState() => _ApplyCouponScreenState();
}

class _ApplyCouponScreenState extends State<ApplyCouponScreen> {
  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
        centerTitle: true,
        showAppBar: true,
        label: context.translate.applyCoupon,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                CommonTextField(
                  hintText: context.translate.enterCouponCode,
                  textInputType: TextInputType.text,
                  maxLength: UIConstants.kMobileNumberDigits,
                  length: UIConstants.kMobileNumberDigits,
                  counterText: "",
                ).paddingSymmetric(vertical: 14.h),
                ListView.builder(
                  itemCount: couponModel.length,
                    shrinkWrap: true,
                    itemBuilder: (context,index){
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16.0)),
                      color: index == 1 ? AppColors.primaryColor :Colors.white
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(ImageConstants.couponCar),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CommonText(
                                text: couponModel[index].title,
                                fontWeight: FontWeight.w600,
                                color: index == 1 ? AppColors.whiteColor :AppColors.blackColor,
                                fontSize: FontConstants.font_16,
                              ),
                              CommonText(
                                text: couponModel[index].subTitle,
                                fontWeight: FontWeight.w400,
                                color: index == 1 ? AppColors.whiteColor :AppColors.blackColor,
                                fontSize: FontConstants.font_12,
                              )
                            ],
                          ).paddingSymmetric(horizontal: 10,vertical: 10),
                        )
                      ],
                    ).paddingSymmetric(horizontal: 10,vertical: 10),
                  ).addDominoEffect().paddingOnly(bottom: 10);
                })
              ],
            ).paddingSymmetric(horizontal: 16.h),
            CommonFilledButton(
              onPressed: () {},
              buttonText: context.translate.applyCoupon,
            ).paddingSymmetric(horizontal: 16.h,vertical: 10),
          ],
        ));
  }
}
