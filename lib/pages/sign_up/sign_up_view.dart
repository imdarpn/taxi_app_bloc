import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../l10n/localization.dart';
import 'bloc/sign_up_bloc.dart';
import '../../routes/navigation_methods.dart';
import '../../utils/extensions.dart';
import '../../core/common/app_constants/image_constants.dart';
import '../../core/common/widgets/widgets.dart';
import '../../core/enums/theme_type.dart';
import '../../core/styles/app_colors.dart';
import '../../core/styles/font_constants.dart';
import '../../core/styles/ui_constants.dart';
import '../../repository/theme/theme_bloc.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      showAppBar: false,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 74.h,
                  ),

                  /// logo
                  BlocBuilder<ThemeBloc, ThemeState>(
                    builder: (context, state) => Image.asset(
                      state.themeType == ThemeType.lightTheme
                          ? ImageConstants.logo
                          : ImageConstants.logoWhite,
                      height: 60.sp,
                      width: 220.sp,
                    ),
                  ),

                  SizedBox(
                    height: 74.h,
                  ),

                  CommonText(
                    text: context.translate.signUp,
                    fontFamily: FontFamilyConstants.fontFamilyMedel,
                    fontSize: FontConstants.font_36,
                    textAlign: TextAlign.center,
                  ).paddingOnly(bottom: 32.h),

                  SizedBox(
                    height: 24.h,
                  ),

                  /// full name field
                  BlocBuilder<SignUpBloc, SignUpState>(
                    builder: (context, state) {
                      return CommonTextField(
                        allowAnimation: false,
                        focusNode: state.nameFocusNode,
                        hintText: context.translate.fullName,
                        textInputType: TextInputType.name,
                        maxLength: UIConstants.kNameFieldLength,
                        length: UIConstants.kNameFieldLength,
                        counterText: "",
                        textInputAction: TextInputAction.next,
                        nextFocusNode: state.emailFocusNode,
                      );
                    },
                  ).paddingSymmetric(horizontal: 16.w),

                  /// email field
                  BlocBuilder<SignUpBloc, SignUpState>(
                    builder: (context, state) {
                      return CommonTextField(
                        allowAnimation: false,
                        focusNode: state.emailFocusNode,
                        hintText: context.translate.email,
                        textInputType: TextInputType.emailAddress,
                        maxLength: UIConstants.kEmailFieldLength,
                        length: UIConstants.kEmailFieldLength,
                        counterText: "",
                        textInputAction: TextInputAction.next,
                        nextFocusNode: state.phoneNumberFocusNode,
                      );
                    },
                  ).paddingSymmetric(vertical: 24.h, horizontal: 16.w),

                  /// phone number field
                  BlocBuilder<SignUpBloc, SignUpState>(
                    builder: (context, state) {
                      return CommonTextField(
                        allowAnimation: false,
                        focusNode: state.phoneNumberFocusNode,
                        hintText: context.translate.phoneNumber,
                        textInputType: TextInputType.phone,
                        maxLength: UIConstants.kMobileNumberDigits,
                        length: UIConstants.kMobileNumberDigits,
                        counterText: "",
                      );
                    },
                  ).paddingSymmetric(horizontal: 16.w),

                  /// sign up button
                  CommonFilledButton(
                    allowAnimation: false,
                    onPressed: () {},
                    buttonText: context.translate.signUp,
                  ).paddingSymmetric(vertical: 32.h, horizontal: 16.w),
                ],
              ),
            ),
          ),
        ],
      ),

      /// sign up text button
      bottomNavigationBar: Text.rich(
        TextSpan(
          text: "${context.translate.alreadyHaveAnAccount} ",
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeightConstants.regular,
              ),
          children: [
            TextSpan(
              text: context.translate.signIn,
              recognizer: TapGestureRecognizer()
                ..onTap = () => context.pushReplacementNamed(Routes.login),
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeightConstants.bold,
                  ),
            ),
          ],
        ),
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontSize: FontConstants.font_16,
              fontFamily: FontFamilyConstants.fontName,
            ),
        textAlign: TextAlign.center,
      ).paddingSymmetric(vertical: 16.h),
    );
  }
}
