import 'package:flutter/material.dart';
import 'package:taxi_customer_demo/l10n/localization.dart';
import 'package:taxi_customer_demo/routes/navigation_methods.dart';
import 'package:taxi_customer_demo/utils/extensions.dart';
import '../../core/common/app_constants/string_constants.dart';
import '../../core/common/common_methods.dart';
import '../../core/common/widgets/common_scaffold.dart';
import '../../core/common/widgets/common_text.dart';
import '../../core/styles/app_colors.dart';
import '../../core/styles/font_constants.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      onPopInvoked: (didPop) async {
        if (didPop) return;

        context.pop();
      },
      child: CommonScaffold(
        centerTitle: true,
        showAppBar: true,
        onTap: () {
          context.pop();
        },
        showBackIcon: true,
        label: StringConstants.settings,
        body: Column(
          children: [
            settingTile(
              title: StringConstants.language,
              onTap: () {
                CommonMethods.showLanguagePanel(context: context);
              },
            ),
            settingTile(
              title: context.translate.changeTheme,
              onTap: () => CommonMethods.showThemePanel(context: context),
            ),
            settingTile(
              title: StringConstants.wallet,
              onTap: () {
                context.pushNamed(Routes.wallet);
              },
            ),
          ],
        ),
      ),
    );
  }

  settingTile({required String title, required Function onTap}) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      child: ListTile(
        onTap: () => onTap.call(),
        title: CommonText(
          text: title,
          fontFamily: FontFamilyConstants.fontName,
          fontWeight: FontWeightConstants.medium,
          fontSize: FontConstants.font_16,
        ),
        trailing: Transform.translate(
          offset: const Offset(16, 0),
          child: const Icon(
            Icons.arrow_forward_ios_outlined,
            size: 20,
            color: AppColors.primaryColor,
          ),
        ),
      ),
    ).paddingSymmetric(vertical: 10, horizontal: 10);
  }
}
