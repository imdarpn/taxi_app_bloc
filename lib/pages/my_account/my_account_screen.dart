import 'package:flutter/material.dart';
import 'package:taxi_customer_demo/core/common/widgets/widgets.dart';
import 'package:taxi_customer_demo/l10n/localization.dart';

class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      body:  Center(
        child: CommonText(
          text: context.translate.myAcc,
        ),
      ),
    );
  }
}
