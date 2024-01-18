import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taxi_customer_demo/l10n/localization.dart';
import 'package:taxi_customer_demo/utils/extensions.dart';
import '../../core/common/app_constants/image_constants.dart';
import '../../core/common/widgets/common_outlined_button.dart';
import '../../core/common/widgets/common_scaffold.dart';
import '../../core/common/widgets/common_text.dart';
import '../../core/common/widgets/common_text_field.dart';
import '../../core/styles/app_colors.dart';
import '../../core/styles/font_constants.dart';
import '../../core/styles/ui_constants.dart';

class InviteFriend extends StatefulWidget {
  const InviteFriend({super.key});

  @override
  State<InviteFriend> createState() => _InviteFriendState();
}

class _InviteFriendState extends State<InviteFriend> {
  final codeCon = TextEditingController(text: "AVB2454");

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      showAppBar: true,
      centerTitle: true,
      showBackIcon: true,
      label: context.translate.inviteFrd,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            ImageConstants.inviteFrnd,
          ).addDominoEffect().paddingOnly(left: 30, top: 30),
          SizedBox(
            height: 15.h,
          ),
          CommonText(
            text: context.translate.inviteFrd,
            fontFamily: FontFamilyConstants.fontName,
            fontSize: FontConstants.font_28,
            fontWeight: FontWeight.w500,
          ).addDominoEffect(),
          SizedBox(
            height: 15.h,
          ),
          CommonText(
            text: context.translate.inviteFriendTxt,
            color: AppColors.greyColor,
            maxLine: 2,
            textAlign: TextAlign.center,
            fontFamily: FontFamilyConstants.fontName,
            fontSize: FontConstants.font_14,
            fontWeight: FontWeight.w400,
          ).addDominoEffect().paddingSymmetric(horizontal: 30),
          SizedBox(
            height: 15.h,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: CommonText(
              text: context.translate.shareCode,
              fontFamily: FontFamilyConstants.fontName,
              fontSize: FontConstants.font_14,
              fontWeight: FontWeight.w400,
            ),
          ).addDominoEffect(),
          CommonTextField(
            textEditingController: codeCon,
            // hintText: StringConstants.phoneNum,
            textInputType: TextInputType.number,
            maxLength: UIConstants.kEmailFieldLength,
            length: UIConstants.kEmailFieldLength,
            counterText: "",
            textInputAction: TextInputAction.next,
            // nextFocusNode: state.phoneNumberFocusNode,
          ).paddingOnly(top: 10, bottom: 20),
          CommonOutlinedButton(
            onPressed: () {},
            borderRadius: 32,
            buttonText: context.translate.invite,
          ),
        ],
      ).paddingAll(10),
    );
  }
}
//inviteFrnd
