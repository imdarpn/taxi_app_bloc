import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets.dart';
import '../../../l10n/localization.dart';
import '../../../utils/extensions.dart';

import '../../../repository/theme/theme_bloc.dart';
import '../../enums/theme_type.dart';
import '../../styles/app_colors.dart';
import '../../styles/font_constants.dart';

class CommonDialog {
  /// common dialog with two button
  static showCommonDialog({
    required BuildContext context,
    bool isDismissible = false,
    String titleName = "",
    String titleContent = "",
    String positiveButtonText = "",
    String negativeButtonText = "",
    bool showReason = false,
    bool backgroundBlur = true,
    required Function(int) callback,
  }) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    final TextEditingController reasonController = TextEditingController();

    showDialog(
      barrierDismissible: isDismissible,
      context: context,
      builder: (BuildContext context) {
        return BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, themeState) {
            return WillPopScope(
              onWillPop: () async {
                return isDismissible;
              },
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: backgroundBlur ? 1 : 0,
                  sigmaY: backgroundBlur ? 1 : 0,
                ),
                child: Dialog(
                  surfaceTintColor: AppColors.whiteColor,
                  /*surfaceTintColor: themeState.themeType == ThemeType.lightTheme
                      ? AppColors.whiteColor
                      : AppColors.darkScaffoldColor,*/
                  backgroundColor: themeState.themeType == ThemeType.lightTheme
                      ? AppColors.scaffoldColor
                      : AppColors.darkScaffoldColor,
                  insetPadding: const EdgeInsets.symmetric(
                    horizontal: 18,
                    vertical: 24,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  //this right here
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Form(
                      key: formKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          CommonText(
                            text: titleName,
                            fontWeight: FontWeightConstants.bold,
                            fontSize: FontConstants.font_18,
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          CommonText(
                            textAlign: TextAlign.center,
                            text: titleContent,
                            fontFamily: FontFamilyConstants.fontName,
                            fontWeight: FontWeightConstants.medium,
                            fontSize: FontConstants.font_14,
                            maxLine: 5,
                          ),
                          const SizedBox(
                            height: 22,
                          ),
                          showReason
                              ? CommonTextField(
                                  allowAnimation: false,
                                  textEditingController: reasonController,
                                  headerText: context.translate.reason,
                                  hintText: context.translate.enterReasonHere,
                                  borderColor: AppColors.fieldBorderColor,
                                  maxLines: 3,
                                  errorMessage:
                                      context.translate.reasonEmptyError,
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 24.w,
                                    vertical: 16.h,
                                  ),
                                ).paddingOnly(bottom: 16, left: 4, right: 4)
                              : Container(),
                          CommonFilledButton(
                            allowAnimation: false,
                            buttonText: positiveButtonText,
                            fontWeight: FontWeightConstants.bold,
                            fontSize: FontConstants.font_14,
                            onPressed: () {
                              Navigator.pop(context);
                              callback(0);
                            },
                          ).paddingSymmetric(horizontal: 4, vertical: 8),
                          const SizedBox(
                            width: 16,
                          ),
                          TextButton(
                            onPressed: () {
                              if (showReason &&
                                  formKey.currentState!.validate()) {
                                /* AppValueConstants.reasonDelete =
                                    reasonController.text.trim();*/
                                Navigator.pop(context);
                                callback(1);
                              } else if (!showReason) {
                                Navigator.pop(context);
                                callback(1);
                              }
                            },
                            child: CommonText(
                              text: negativeButtonText,
                              fontWeight: FontWeightConstants.bold,
                              fontSize: FontConstants.font_14,
                            ),
                          ).paddingOnly(bottom: 8),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
