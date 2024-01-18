import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taxi_customer_demo/l10n/localization.dart';
import 'package:taxi_customer_demo/utils/domino_reveal.dart';
import 'package:taxi_customer_demo/utils/extensions.dart';

import '../../core/common/widgets/widgets.dart';
import '../../core/styles/app_colors.dart';
import '../../core/styles/font_constants.dart';
import 'bloc/notification_bloc.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      showAppBar: true,
      showBackIcon: true,
      label: context.translate.notification,
      body: BlocBuilder<NotificationBloc, NotificationState>(
        builder: (context, state) {
          return ListView.separated(
            shrinkWrap: true,
            // primary: false,
            itemCount: state.notificationList.length,
            itemBuilder: (_, index) {
              return Card(
                elevation: 0,
                margin: EdgeInsets.zero,
                child: ListTile(
                  title: CommonText(
                    text: state.notificationList[index].title,
                    fontFamily: FontFamilyConstants.fontName,
                    fontWeight: FontWeight.w600,
                    fontSize: FontConstants.font_18,
                  ),
                  subtitle: CommonText(
                    text: state.notificationList[index].message,
                    fontFamily: FontFamilyConstants.fontName,
                    fontWeight: FontWeight.w400,
                    color: AppColors.subTextColor,
                    fontSize: FontConstants.font_18,
                  ),
                ),
              ).addDominoEffect();
            },
            separatorBuilder: (_, __) => const SizedBox(
              height: 20,
            ),
          );
        },
      ).paddingAll(10),
    );
  }
}
