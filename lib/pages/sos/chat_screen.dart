import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taxi_customer_demo/l10n/localization.dart';
import 'package:taxi_customer_demo/utils/extensions.dart';

import '../../core/common/app_constants/icon_constants.dart';
import '../../core/common/app_constants/string_constants.dart';
import '../../core/common/widgets/common_scaffold.dart';
import '../../core/common/widgets/common_text.dart';
import '../../core/common/widgets/common_text_field.dart';
import '../../core/styles/app_colors.dart';
import '../../core/styles/font_constants.dart';
import '../../core/styles/ui_constants.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      showBackIcon: true,
      showAppBar: true,
      showLabel: false,
      titleWidget: appBar(context),
      titleSpacing: 0,
      bodyPadding: EdgeInsets.zero,
      body: Column(
        children: [
          // appBar(context),
          SizedBox(
            height: 20.h,
          ),
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: 10,
              reverse: true,
              itemBuilder: (BuildContext context, int index) {
                return chatBubble(index % 2 == 0, context).addDominoEffect();
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 15.h,
                );
              },
            ),
          ),
          CommonTextField(
            // textEditingController: codeCon,
            hintText: context.translate.typeMess,
            textInputType: TextInputType.emailAddress,
            maxLength: UIConstants.kEmailFieldLength,
            length: UIConstants.kEmailFieldLength,
            counterText: "",
            textInputAction: TextInputAction.next,
            // nextFocusNode: state.phoneNumberFocusNode,
          ).paddingAll(15),
        ],
      ),
    );
  }

  Widget chatBubble(bool isReceiver, BuildContext context) {
    return Container(
      margin: !isReceiver
          ? const EdgeInsets.only(left: 108, right: 16)
          : const EdgeInsets.only(left: 16, right: 80),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(16),
            topRight: const Radius.circular(16),
            bottomLeft: !isReceiver
                ? const Radius.circular(16)
                : const Radius.circular(0),
            bottomRight: isReceiver
                ? const Radius.circular(16)
                : const Radius.circular(0),
          ),
          color: !isReceiver
              ? AppColors.primaryColor
              : AppColors.activeIndicatorColor),
      child: CommonText(
        text: StringConstants.aboutDes,
        fontFamily: FontFamilyConstants.fontName,
        fontWeight: FontWeight.w500,
        color: !isReceiver ? AppColors.whiteColor : AppColors.blackColor,
        fontSize: FontConstants.font_16,
      ),
    );
  }

  appBar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SvgPicture.asset(
          IconConstants.person,
          width: 40.w,
          height: 40.w,
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonText(
              text: "Father",
              fontFamily: FontFamilyConstants.fontName,
              fontWeight: FontWeight.w500,
              fontSize: FontConstants.font_16,
            ),
            CommonText(
              text: "Active now",
              fontFamily: FontFamilyConstants.fontName,
              fontWeight: FontWeight.w400,
              color: AppColors.subTextColor,
              fontSize: FontConstants.font_12,
            )
          ],
        ),
      ],
    );
  }
}
