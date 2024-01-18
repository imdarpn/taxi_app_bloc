import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taxi_customer_demo/core/common/widgets/common_dialog.dart';
import 'package:taxi_customer_demo/core/di/injector_container.dart';
import 'package:taxi_customer_demo/l10n/localization.dart';
import 'package:taxi_customer_demo/repository/local_data/local_data_source.dart';
import 'package:taxi_customer_demo/routes/navigation_methods.dart';
import 'package:taxi_customer_demo/utils/domino_reveal.dart';
import 'package:taxi_customer_demo/utils/extensions.dart';

import '../../core/common/app_constants/image_constants.dart';
import '../../core/common/app_constants/string_constants.dart';
import '../../core/common/common_widgets.dart';
import '../../core/common/widgets/common_filled_button.dart';
import '../../core/common/widgets/common_scaffold.dart';
import '../../core/common/widgets/common_text.dart';
import '../../core/styles/app_colors.dart';
import '../../core/styles/font_constants.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      showBackIcon: true,
      showAppBar: true,
      centerTitle: true,
      bodyPadding: const EdgeInsets.all(10),
      label: StringConstants.myAcc,
      body: SingleChildScrollView(
        child: Column(
          children: [
            profileDiv().addDominoEffect(),

            bankDiv().addDominoEffect(),

            Align(
              alignment: Alignment.topLeft,
              child: CommonText(
                text: StringConstants.links,
                fontFamily: FontFamilyConstants.fontName,
                fontWeight: FontWeight.w500,
                fontSize: FontConstants.font_16,
              ),
            ).addDominoEffect().paddingOnly(top: 10, bottom: 10),

            optionDiv(
              icon: ImageConstants.history,
              title: context.translate.history,
              onClick: () {
                context.pushNamed(Routes.rideHistory);
              },
            ),
            // optionDiv(icon: ImageConstants.location, title: StringConstants.language,onClick: (){}),
            // optionDiv(icon: ImageConstants.wallet, title: StringConstants.wallet,onClick: (){}),
          ],
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            highlightColor: AppColors.transparentColor,
            splashColor: AppColors.transparentColor,
            onTap: () {
              CommonDialog.showCommonDialog(
                context: context,
                showReason: true,
                titleName: "${context.translate.deleteThisAccount}?",
                titleContent: context.translate.deleteContain,
                positiveButtonText: context.translate.cancel,
                negativeButtonText: context.translate.delete,
                callback: (value) {
                  if (value == 1) {
                    getIt<LocalDataSource>().clearLoginData();
                    context.popAllAndPush(Routes.login);
                  }
                },
              );
            },
            child: CommonText(
              text: StringConstants.deleteAccount,
              fontFamily: FontFamilyConstants.fontName,
              color: AppColors.redColor,
              fontSize: FontConstants.font_16,
              fontWeight: FontWeight.w500,
            ),
          ).addDominoEffect(),
          CommonFilledButton(
            onPressed: () {
              CommonDialog.showCommonDialog(
                context: context,
                titleName: context.translate.areYouSure,
                titleContent: context.translate.logoutContain,
                positiveButtonText: context.translate.logOut,
                negativeButtonText: context.translate.cancel,
                callback: (value) {
                  if (value == 0) {
                    getIt<LocalDataSource>().clearLoginData();
                    context.popAllAndPush(Routes.login);
                  }
                },
              );
            },
            buttonText: context.translate.logOut,
          )
              .addDominoEffect()
              .paddingSymmetric(horizontal: 24.w, vertical: 16.h),
        ],
      ).addDominoEffect(),
    );
  }

  Widget profileDiv() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// image
          ClipOval(
            child: Image.asset(
              ImageConstants.profile,
              fit: BoxFit.cover,
              width: 87.w,
              height: 87.h,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonText(
                text: "Frank Smith",
                fontSize: FontConstants.font_18,
                fontWeight: FontWeightConstants.semiBold,
              ),
              CommonText(
                text: "frank.smith@gmail.com",
                fontFamily: FontFamilyConstants.fontName,
                color: AppColors.subTextColor,
                fontSize: FontConstants.font_14,
              ).paddingSymmetric(vertical: 4.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    ImageConstants.call,
                    height: 12.w,
                    width: 12.w,
                  ),
                  CommonText(
                    text: " +1 1234567891",
                    fontFamily: FontFamilyConstants.fontName,
                    fontSize: FontConstants.font_14,
                    fontWeight: FontWeight.w400,
                  ),
                ],
              ),
            ],
          ).paddingOnly(left: 16.w),
          const Spacer(),
          InkWell(
            onTap: () {
              context.pushNamed(Routes.updateProfile);
            },
            child: Container(
              clipBehavior: Clip.antiAlias,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.primaryColor, width: 1),
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(
                ImageConstants.edit,
                height: 14.h,
                width: 14.h,
              ),
            ),
          ),
        ],
      ).paddingSymmetric(horizontal: 12.w, vertical: 12.h),
    );
  }

  Widget bankDiv() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonText(
                text: context.translate.savedCards,
                fontFamily: FontFamilyConstants.fontName,
                fontSize: FontConstants.font_16,
                fontWeight: FontWeightConstants.medium,
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  context.pushNamed(Routes.cardScreen);
                },
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.primaryColor, width: 1),
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(
                    ImageConstants.edit,
                    height: 14.h,
                    width: 14.h,
                  ),
                ),
              ),
            ],
          ),
          CommonWidgets.commonSettingWithSubTile(
            title: "···· ···· ··52 2457",
            subtitle: "Expiry 07/24",
            onTap: () {
              context.pushNamed(Routes.cardScreen);
            },
            leading: SvgPicture.asset(
              ImageConstants.visa,
              height: 16.h,
              color: AppColors.primaryColor,
            ),
          ).paddingSymmetric(vertical: 16.h),
          /* Row(
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: AppColors.fieldBorderColor,
                    borderRadius: BorderRadius.circular(5)),
                child: SvgPicture.asset(
                  ImageConstants.bank,
                  height: 30.h,
                  width: 35.h,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommonText(
                      text: "STATE BANK OF UK\n*****1234",
                      fontFamily: FontFamilyConstants.fontName,
                      fontSize: FontConstants.font_18,
                      fontWeight: FontWeight.w600,
                    ).paddingAll(2),
                    CommonText(
                      text: StringConstants.priAccount,
                      fontFamily: FontFamilyConstants.fontName,
                      color: AppColors.subTextColor,
                      fontSize: FontConstants.font_14,
                      fontWeight: FontWeight.w400,
                    ),
                    CommonText(
                      text: StringConstants.delete,
                      fontFamily: FontFamilyConstants.fontName,
                      color: AppColors.redColor,
                      fontSize: FontConstants.font_14,
                      fontWeight: FontWeight.w500,
                    ).paddingAll(2),
                  ],
                ).paddingAll(15),
              )
            ],
          ).paddingAll(5),*/

          /// add new card view
          InkWell(
            highlightColor: AppColors.transparentColor,
            splashColor: AppColors.transparentColor,
            onTap: () {
              context.pushNamed(Routes.cardScreen);
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                DottedBorder(
                  color: AppColors.primaryColor,
                  strokeWidth: 1,
                  dashPattern: const [10, 6],
                  radius: const Radius.circular(8),
                  borderType: BorderType.RRect,
                  child: const Icon(
                    Icons.add,
                    color: AppColors.primaryColor,
                  ).paddingSymmetric(vertical: 10, horizontal: 25),
                ).paddingAll(5),
                SizedBox(
                  width: 25.h,
                ),
                CommonText(
                  text: context.translate.addNewCard,
                  fontFamily: FontFamilyConstants.fontName,
                  color: AppColors.subTextColor,
                  fontSize: FontConstants.font_16,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
          ),
        ],
      ).paddingSymmetric(horizontal: 12.w, vertical: 12.h),
    );
  }

  optionDiv(
      {required String icon,
      required String title,
      required Function onClick}) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      child: ListTile(
        onTap: () {
          onClick.call();
        },
        title: CommonText(
          text: title,
          fontFamily: FontFamilyConstants.fontName,
          fontWeight: FontWeight.w500,
          fontSize: FontConstants.font_16,
        ),
        leading: SvgPicture.asset(
          icon,
          width: 31.w,
          height: 31.w,
        ),
        trailing: Icon(
          Icons.arrow_forward_ios_outlined,
          size: 15.h,
          color: AppColors.primaryColor,
        ),
      ),
    ).addDominoEffect();
  }
}
