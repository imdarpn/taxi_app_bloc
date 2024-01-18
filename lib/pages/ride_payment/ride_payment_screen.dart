import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taxi_customer_demo/core/common/app_constants/image_constants.dart';
import '../../core/common/common_widgets.dart';
import '../../core/common/widgets/common_scaffold.dart';
import '../../core/common/widgets/common_text.dart';
import '../../core/styles/font_constants.dart';
import 'package:taxi_customer_demo/l10n/localization.dart';
import 'package:taxi_customer_demo/routes/navigation_methods.dart';
import 'package:taxi_customer_demo/utils/extensions.dart';

import '../../core/common/widgets/common_filled_button.dart';
import '../../core/common/widgets/common_text_field.dart';
import '../../core/styles/app_colors.dart';
import '../../core/styles/ui_constants.dart';

class RidePayment extends StatefulWidget {
  const RidePayment({super.key});

  @override
  State<RidePayment> createState() => _RidePaymentState();
}

class _RidePaymentState extends State<RidePayment> {
  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      showAppBar: true,
      resizeToAvoidBottomInset: false,
      bodyPadding: EdgeInsets.symmetric(horizontal: 16.w),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: SvgPicture.asset(
                      ImageConstants.applyCoupon,
                    ),
                  ).paddingOnly(bottom: 40),

                  CommonWidgets.commonSettingTile(
                    title: context.translate.applyCoupon,
                    onTap: () {
                      context.pushNamed(Routes.applyCouponScreen);
                    },
                    trailing: CommonWidgets.commonTrailingArrow(),
                  ),

                  /// apply coupon field
                  Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: CommonTextField(
                          hintText: context.translate.enterCouponCode,
                          textInputType: TextInputType.text,
                          maxLength: UIConstants.kMobileNumberDigits,
                          length: UIConstants.kMobileNumberDigits,
                          counterText: "",
                        ).paddingSymmetric(vertical: 14.h),
                      ),
                      Expanded(
                        flex: 2,
                        child: CommonFilledButton(
                          onPressed: () {},
                          buttonText: context.translate.apply,
                        ).paddingOnly(left: 16.w),
                      ),
                    ],
                  ),

                  /// add new card
                  /*Row(
                    children: [
                      Expanded(
                        child: CommonText(
                          text: context.translate.addNewCard,
                        ),
                      ),
                      InkWell(
                        splashColor: AppColors.transparentColor,
                        highlightColor: AppColors.transparentColor,
                        onTap: () {
                          context.pushNamed(Routes.cardScreen);
                        },
                        child: const Icon(
                          Icons.add,
                          color: AppColors.primaryColor,
                          size: 28,
                        ),
                      ),
                    ],
                  ),*/

                  /// payment method
                  CommonText(
                    text: context.translate.paymentMethod,
                    fontWeight: FontWeightConstants.medium,
                  ).paddingSymmetric(horizontal: 4.w, vertical: 8.h),
                  CommonWidgets.commonSettingTile(
                    title: context.translate.cash,
                    onTap: () {
                      context.pushNamed(Routes.paymentMethods);
                    },
                    leading: SvgPicture.asset(
                      ImageConstants.cash,
                      height: 35.h,
                    ),
                    trailing: CommonWidgets.commonTrailingArrow(),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommonText(
                      text: "\$ 52",
                      color: AppColors.primaryColor,
                      fontSize: FontConstants.font_24,
                      fontWeight: FontWeight.w600,
                    ),
                    CommonText(
                      text: context.translate.price,
                      fontSize: FontConstants.font_14,
                      fontWeight: FontWeight.w500,
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: CommonFilledButton(
                  onPressed: () {
                    context.pop(true);
                  },
                  buttonText: context.translate.bookRide,
                ),
              ),
            ],
          ).addDominoEffect().paddingOnly(bottom: 12.h),
        ],
      ),
    );
  }
}
