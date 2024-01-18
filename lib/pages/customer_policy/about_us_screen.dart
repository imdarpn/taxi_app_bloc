import 'package:flutter/cupertino.dart';
import 'package:taxi_customer_demo/l10n/localization.dart';
import 'package:taxi_customer_demo/utils/extensions.dart';
import '../../core/common/app_constants/string_constants.dart';
import '../../core/common/widgets/common_scaffold.dart';
import '../../core/common/widgets/common_text.dart';
import '../../core/styles/app_colors.dart';
import '../../core/styles/font_constants.dart';


class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
        showAppBar: true,
        showBackIcon: true,
        label: StringConstants.about,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonText(
              text: context.translate.aboutApp,
              fontFamily: FontFamilyConstants.fontName,
              fontWeight: FontWeight.w500,
              fontSize: FontConstants.font_16,
            ).addDominoEffect(),
            SizedBox(height: 20,),
            CommonText(
              text: StringConstants.aboutDes,
              fontFamily: FontFamilyConstants.fontName,
              fontWeight: FontWeight.w400,
              maxLine: 10,
              color: AppColors.greyColor,
              fontSize: FontConstants.font_14,
            ).addDominoEffect(),
            SizedBox(height: 20,),
            CommonText(
              text: StringConstants.aboutDes,
              fontFamily: FontFamilyConstants.fontName,
              fontWeight: FontWeight.w400,
              color: AppColors.greyColor,
              maxLine: 10,
              fontSize: FontConstants.font_14,
            ).addDominoEffect(),
            SizedBox(height: 20,),
            CommonText(
              text: StringConstants.aboutDes,
              fontFamily: FontFamilyConstants.fontName,
              fontWeight: FontWeight.w400,
              color: AppColors.greyColor,
              maxLine: 10,
              fontSize: FontConstants.font_14,
            ).addDominoEffect(),
            SizedBox(height: 20,),
          ],
        ).paddingAll(15),
      ),
    );
  }
}
