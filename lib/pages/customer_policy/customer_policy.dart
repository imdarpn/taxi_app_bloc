import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taxi_customer_demo/l10n/localization.dart';
import 'package:taxi_customer_demo/routes/navigation_methods.dart';
import 'package:taxi_customer_demo/utils/extensions.dart';
import '../../core/common/app_constants/string_constants.dart';
import '../../core/common/widgets/common_scaffold.dart';
import '../../core/common/widgets/common_text.dart';
import '../../core/styles/app_colors.dart';
import '../../core/styles/font_constants.dart';

class CustomerPolicyScreen extends StatefulWidget {
  const CustomerPolicyScreen({super.key});

  @override
  State<CustomerPolicyScreen> createState() => _CustomerPolicyScreenState();
}

class _CustomerPolicyScreenState extends State<CustomerPolicyScreen> {
  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      showAppBar: true,
      showBackIcon: true,
      bodyPadding: EdgeInsets.zero,
      label: context.translate.customerPolicy,
      body: Column(
        children: [
          Expanded(
              child: ListView.separated(
            shrinkWrap: true,
            itemCount: driverSubMenu.length,
            itemBuilder: (_, index) {
              return Card(
                elevation: 0,
                margin: EdgeInsets.zero,
                child: ListTile(
                    onTap: () => context.pushNamed(driverSubMenu[index].path),
                    title: CommonText(
                      text: driverSubMenu[index].title,
                      fontFamily: FontFamilyConstants.fontName,
                      fontWeight: FontWeight.w500,
                      fontSize: FontConstants.font_16,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 15.h,
                      color: AppColors.primaryColor,
                    )),
              ).addDominoEffect();
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                height: 10,
              );
            },
          ))
        ],
      ).paddingAll(10),
    );
  }
}
