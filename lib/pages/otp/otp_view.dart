import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../core/common/common_methods.dart';
import '../../core/common/widgets/widgets.dart';
import '../../core/services/storage_service/storage_keys.dart';
import '../../core/styles/app_colors.dart';
import '../../core/styles/font_constants.dart';
import '../../l10n/localization.dart';
import '../../repository/local_data/local_data_source.dart';
import '../../routes/navigation_methods.dart';
import '../../utils/custom_widgets/num_pad_default.dart';
import '../../utils/extensions.dart';
import '../../core/di/injector_container.dart';

class OtpView extends StatelessWidget {
  const OtpView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController otpTextEditingController = TextEditingController();
    return CommonScaffold(
      showAppBar: true,
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /// enter verification title
                CommonText(
                  text: context.translate.enterVerificationCode,
                  fontSize: FontConstants.font_20,
                  fontWeight: FontWeightConstants.medium,
                  textAlign: TextAlign.center,
                ),

                /// code sent message
                Text.rich(
                  TextSpan(
                    text: context.translate.codeHasBeenSentTo,
                    children: [
                      TextSpan(
                        text: " +91 4545454710",
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeightConstants.bold,
                                  color: AppColors.infoLightGreyColor,
                                  fontFamily: FontFamilyConstants.fontName,
                                ),
                      )
                    ],
                  ),
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: AppColors.infoLightGreyColor,
                        fontSize: FontConstants.font_14,
                        fontFamily: FontFamilyConstants.fontName,
                      ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),

          /// otp field
          Expanded(
            flex: 4,
            child: Column(
              children: [
                PinCodeTextField(
                  controller: otpTextEditingController,
                  appContext: context,
                  // enabled: false,
                  mainAxisAlignment: MainAxisAlignment.center,
                  autovalidateMode: AutovalidateMode.disabled,
                  length: 4,
                  autoUnfocus: false,
                  errorTextSpace: 24,
                  hintCharacter: "-",
                  cursorColor: AppColors.primaryColor,
                  hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: AppColors.infoLightGreyColor.withOpacity(0.6),
                        fontWeight: FontWeightConstants.medium,
                        fontSize: FontConstants.font_18,
                        fontFamily: FontFamilyConstants.fontName,
                      ),
                  errorTextMargin: const EdgeInsets.symmetric(horizontal: 4),
                  autoFocus: true,
                  animationType: AnimationType.fade,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'\d')),
                    FilteringTextInputFormatter.deny(" "),
                    LengthLimitingTextInputFormatter(4),
                  ],
                  enableActiveFill: true,
                  // keyboardType: TextInputType.number,
                  keyboardType: TextInputType.none,
                  beforeTextPaste: (text) {
                    return true;
                  },
                  pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(16),
                      fieldOuterPadding:
                          const EdgeInsets.symmetric(horizontal: 8),
                      fieldWidth: 66.w,
                      fieldHeight: 66.h,
                      inactiveFillColor: AppColors.whiteColor,
                      inactiveColor: AppColors.fieldBorderColor,
                      activeFillColor: AppColors.whiteColor,
                      activeColor: AppColors.primaryColor,
                      selectedFillColor: AppColors.whiteColor,
                      selectedColor: AppColors.primaryColor,
                      borderWidth: 1.w,
                      activeBorderWidth: 1.w,
                      selectedBorderWidth: 1.w),
                  textStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontSize: FontConstants.font_26,
                        color: AppColors.blackColor,
                        fontWeight: FontWeightConstants.medium,
                        fontFamily: FontFamilyConstants.fontName,
                      ),
                  onChanged: (value) {},
                  onCompleted: (v) {
                    _onVerify(context);
                  },
                  /* validator: (text) {
                    if (controller.otpState.otpController.text.trim().isEmpty) {
                      return LocaleKeys.errorEmptyOtp.tr;
                    } else if (controller.otpState.otpController.text
                            .trim()
                            .length <
                        4) {
                      return LocaleKeys.errorValidOtp.tr;
                    }
                    return null;
                  },*/
                  animationDuration: const Duration(milliseconds: 300),
                ).paddingSymmetric(vertical: 48.h),

                /// didn't receive code text button
                Text.rich(
                  TextSpan(
                    text: "${context.translate.didntReceiveACode} ",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeightConstants.regular,
                        ),
                    children: [
                      TextSpan(
                        text: context.translate.resend,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => print("OTP Resent"),
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  color: AppColors.primaryColor,
                                  fontWeight: FontWeightConstants.bold,
                                ),
                      ),
                    ],
                  ),
                  style: TextStyle(
                    fontFamily: FontFamilyConstants.fontName,
                    fontSize: FontConstants.font_16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),

          /// num pad
          NumPadDefault(
            buttonSize: 45,
            iconSize: 32,
            buttonColor: AppColors.primaryColor,
            iconColor: AppColors.blackColor,
            delete: () {
              if (otpTextEditingController.text.isNotEmpty) {
                otpTextEditingController.text =
                    otpTextEditingController.text.substring(
                  0,
                  otpTextEditingController.text.length - 1,
                );
              }
            },
            onSubmit: () {
              _onVerify(context);
            },
            controller: otpTextEditingController,
          ).paddingOnly(left: 20, right: 20, bottom: 32),

          /*CommonFilledButton(
            onPressed: () {
              _onVerify(context);
            },
            buttonText: context.translate.verifyNow,
          ).paddingSymmetric(horizontal: 20.w, vertical: 16.h),*/
        ],
      ),
    );
  }

  Future<void> _onVerify(BuildContext context) async {
    await getIt<LocalDataSource>().setData(StorageKeys.keyLoggedIn, true);

    if (await CommonMethods.checkLocationPermissionStatus()) {
      context.popAllAndPush(Routes.homeMap);
    } else {
      context.popAllAndPush(Routes.locationPermission);
    }
  }
}
