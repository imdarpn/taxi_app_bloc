import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/countries.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:taxi_customer_demo/auth_service.dart';
import 'package:taxi_customer_demo/core/common/widgets/common_country_dialog.dart';
import 'package:taxi_customer_demo/core/common/widgets/common_phone_field.dart';
import 'package:taxi_customer_demo/core/styles/app_colors.dart';
import 'package:taxi_customer_demo/core/styles/ui_constants.dart';
import 'package:taxi_customer_demo/l10n/localization.dart';
import 'package:taxi_customer_demo/routes/navigation_methods.dart';
import 'package:taxi_customer_demo/utils/extensions.dart';
import '../../core/common/app_constants/image_constants.dart';
import '../../core/common/common_methods.dart';
import '../../core/common/widgets/widgets.dart';
import '../../core/enums/theme_type.dart';
import '../../core/styles/font_constants.dart';
import '../../repository/theme/theme_bloc.dart';
import 'bloc/login_bloc.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      showAppBar: true,
      showBackIcon: false,
      body: Column(
        children: [
          /// logo
          Expanded(
            flex: 2,
            child: BlocBuilder<ThemeBloc, ThemeState>(
              builder: (context, state) => Image.asset(
                state.themeType == ThemeType.lightTheme
                    ? ImageConstants.logo
                    : ImageConstants.logoWhite,
                height: 60.sp,
                width: 220.sp,
              ),
            ),
          ),

          Expanded(
            flex: 4,
            child: Column(
              children: [
                /// login title
                CommonText(
                  text: context.translate.login,
                  fontFamily: FontFamilyConstants.fontFamilyMedel,
                  fontSize: FontConstants.font_36,
                  textAlign: TextAlign.center,
                ),

                /// login sub title
                CommonText(
                  text: context.translate.loginSubText,
                  fontSize: FontConstants.font_16,
                  textAlign: TextAlign.center,
                ).paddingOnly(top: 56.h),

                /// phone number field
                BlocBuilder<LoginBloc, LoginState>(
                  builder: (context, state) {
                    return CommonPhoneField(
                      allowAnimation: false,
                      onCountryChanged: (country) {
                        context
                            .read<LoginBloc>()
                            .add(LoginEvent.onCountryChanged(country: country));
                      },
                      selectedCountry: state.country,
                      hintText: context.translate.phoneNumber,
                      textInputType: TextInputType.phone,
                      maxLength: UIConstants.kMobileNumberDigits,
                      length: UIConstants.kMobileNumberDigits,
                      counterText: "",
                    );
                  },
                ).paddingSymmetric(vertical: 24.h, horizontal: 16.w),

                ///
                /*CommonFilledButton(
                  onPressed: () {
                    _onFBLogin();
                    // context.pushNamed(Routes.otp);
                  },
                  buttonText: "FB login",
                ).paddingSymmetric(horizontal: 16.w),*/

                /// send code button
                Visibility(
                  visible: false,
                  child: CommonFilledButton(
                    onPressed: () {
                      AuthService.signInWithApple(scopes: [
                        AppleIDAuthorizationScopes.email,
                        AppleIDAuthorizationScopes.fullName,
                      ]);
                      // final credential = await SignInWithApple.getAppleIDCredential(
                      //   scopes: [
                      //     AppleIDAuthorizationScopes.email,
                      //     AppleIDAuthorizationScopes.fullName,
                      //   ],
                      // );
                      // print("Apple Login Credential ---- $credential");
                    },
                    buttonText: context.translate.signInApple,
                  ).paddingSymmetric(horizontal: 16.w, vertical: 10),
                ),

                Visibility(
                  visible: false,
                  child: CommonFilledButton(
                    onPressed: () async {
                      await FirebaseAuth.instance.signOut().then((value) {
                        print("Logout done");
                      });
                    },
                    buttonText: "Log Out",
                  ).paddingSymmetric(horizontal: 16.w, vertical: 10),
                ),
                CommonFilledButton(
                  allowAnimation: false,
                  onPressed: () {
                    context.pushNamed(Routes.otp);
                  },
                  buttonText: context.translate.sendCode,
                ).paddingSymmetric(horizontal: 16.w, vertical: 10),
              ],
            ),
          ),

          /// sign up text button
          Text.rich(
            TextSpan(
              text: "${context.translate.dontHaveAnAccount} ",
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeightConstants.regular,
                  ),
              children: [
                TextSpan(
                  text: context.translate.signUp,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => context.pushReplacementNamed(Routes.signUp),
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
        ],
      ),
    );
  }

  Future<void> _onFBLogin() async {
    final LoginResult result = await FacebookAuth.instance
        .login(); // by default we request the email and the public profile
// or FacebookAuth.i.login()
    if (result.status == LoginStatus.success) {
      // Create a credential from the access token
      final OAuthCredential credential =
          FacebookAuthProvider.credential(result.accessToken!.token);
      // Once signed in, return the UserCredential
      UserCredential test =
          await FirebaseAuth.instance.signInWithCredential(credential);
      debugPrint("-- USER: ${test.user.toString()}");

      // print("LOGGED In");
      debugPrint("LOGGED In");
    } else {
      debugPrint("NOT LOGGED In");
      print(result.status);
      print(result.message);
    }
  }
}
