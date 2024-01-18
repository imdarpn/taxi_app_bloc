import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:taxi_customer_demo/core/common/widgets/common_outlined_button.dart';
import 'package:taxi_customer_demo/l10n/localization.dart';
import 'package:taxi_customer_demo/routes/navigation_methods.dart';
import 'package:taxi_customer_demo/utils/extensions.dart';

import '../../core/common/view_models/address_model.dart';
import '../../core/common/widgets/widgets.dart';
import '../../core/enums/theme_type.dart';
import '../../core/styles/app_colors.dart';
import '../../core/styles/font_constants.dart';
import '../../repository/theme/theme_bloc.dart';

class RideHistoryScreen extends StatelessWidget {
  const RideHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<AddressModel> list = [
      AddressModel(
        0,
        "Neemuch RD. Gopalbari, Bari Sad",
        const LatLng(0, 0),
        TextEditingController(text: "Neemuch RD. Gopalbari, Bari Sad"),
      ),
      AddressModel(
        1,
        "Gopalbari, Bari Sad",
        const LatLng(0, 0),
        TextEditingController(text: "Gopalbari, Bari Sad"),
      ),
    ];
    return CommonScaffold(
      showAppBar: true,
      showBackIcon: true,
      centerTitle: true,
      label: context.translate.history,
      bodyPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      body: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, themeState) {
          return ListView.separated(
            shrinkWrap: true,
            primary: false,
            itemBuilder: (BuildContext context, index) {
              return InkWell(
                highlightColor: AppColors.transparentColor,
                splashColor: AppColors.transparentColor,
                onTap: () {
                  context.pushNamed(Routes.rating);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 16.h,
                  ),
                  decoration: BoxDecoration(
                    color: themeState.themeType == ThemeType.lightTheme
                        ? AppColors.whiteColor
                        : AppColors.blackColor,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.blackColor.withOpacity(0.07),
                        offset: const Offset(0, 2),
                        blurRadius: 2,
                        // blurStyle: BlurStyle.solid,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CommonOutlinedButton(
                        onPressed: () {},
                        buttonHeight: 35.h,
                        buttonWidth: 105.w,
                        fontWeight: FontWeight.w500,
                        fontSize: FontConstants.font_14,
                        borderColor: index % 2 == 0
                            ? AppColors.greenBorderColor
                            : AppColors.redBorderColor,
                        buttonText: index % 2 == 0 ? "Completed" : "Cancel",
                        buttonColor: index % 2 == 0
                            ? AppColors.greenLightColor
                            : AppColors.redLightColor,
                        buttonTextColor: index % 2 == 0
                            ? AppColors.greenColor
                            : AppColors.redColor,
                      ).paddingSymmetric(vertical: 8.h),
                      MediaQuery.removePadding(
                        context: context,
                        removeTop: true,
                        removeBottom: true,
                        child: CommonWidgets.stepperWithText(
                          addressList: list,
                          onTap: (value, index) {},
                        ),
                      ).paddingOnly(top: 8.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CommonText(
                            text: "\$52",
                            fontFamily: FontFamilyConstants.fontName,
                            color: AppColors.primaryColor,
                            fontSize: FontConstants.font_24,
                            fontWeight: FontWeight.w600,
                          ),
                          CommonText(
                            text: "02/05/2022",
                            fontFamily: FontFamilyConstants.fontName,
                            color: AppColors.greyColor,
                            fontSize: FontConstants.font_14,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ).addDominoEffect();
            },
            separatorBuilder: (_, __) => SizedBox(
              height: 20.h,
            ),
            itemCount: 5,
          );
        },
      ),
    );
  }
}
