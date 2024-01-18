import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taxi_customer_demo/l10n/localization.dart';
import 'package:taxi_customer_demo/utils/extensions.dart';
import '../../../core/common/app_constants/image_constants.dart';
import '../../../core/common/app_constants/string_constants.dart';
import '../../../core/common/widgets/common_outlined_button.dart';
import '../../../core/common/widgets/common_scaffold.dart';
import '../../../core/common/widgets/common_text_field.dart';
import '../../../core/styles/app_colors.dart';
import '../../../core/styles/ui_constants.dart';

class UpdateProfile extends StatefulWidget {
  const UpdateProfile({super.key});

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      showBackIcon: true,
      showAppBar: true,
      centerTitle: true,
      label: StringConstants.editProfile,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                width: 128.0,
                height: 128.0,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
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
              Positioned(
                top: 0,
                right: 0,
                child: ClipOval(
                  child: Container(
                    color: AppColors.primaryColor,
                    padding: const EdgeInsets.all(8),
                    child: SvgPicture.asset(
                      ImageConstants.camera,
                    ),
                  ),
                ),
              )
            ],
          ).addDominoEffect(),
          const SizedBox(
            height: 20,
          ),
          CommonTextField(
            //focusNode: state.emailFocusNode,
            hintText: context.translate.name,
            prefixIcon: SvgPicture.asset(
              ImageConstants.user,
            ),
            textInputType: TextInputType.emailAddress,
            maxLength: UIConstants.kEmailFieldLength,
            length: UIConstants.kEmailFieldLength,
            counterText: "",
            textInputAction: TextInputAction.next,
            // nextFocusNode: state.phoneNumberFocusNode,
          ).paddingOnly(top: 20),
          CommonTextField(
            //focusNode: state.emailFocusNode,
            hintText: context.translate.email,
            prefixIcon: SvgPicture.asset(
              ImageConstants.email,
            ),
            textInputType: TextInputType.emailAddress,
            maxLength: UIConstants.kEmailFieldLength,
            length: UIConstants.kEmailFieldLength,
            counterText: "",
            textInputAction: TextInputAction.next,
            // nextFocusNode: state.phoneNumberFocusNode,
          ).paddingOnly(top: 20),
          CommonTextField(
            //focusNode: state.emailFocusNode,
            hintText: context.translate.phoneNumber,
            prefixIcon: SvgPicture.asset(
              ImageConstants.call,
              color: AppColors.blackColor,
            ),
            textInputType: TextInputType.number,
            maxLength: UIConstants.kEmailFieldLength,
            length: UIConstants.kEmailFieldLength,
            counterText: "",
            textInputAction: TextInputAction.next,
            // nextFocusNode: state.phoneNumberFocusNode,
          ).paddingOnly(top: 20),
          const Spacer(),
          CommonOutlinedButton(
            onPressed: () {},
            borderRadius: 32,
            buttonText: StringConstants.updateProfile,
          ),
          SizedBox(
            height: 20.h,
          )
        ],
      ).paddingAll(20),
    );
  }
}
