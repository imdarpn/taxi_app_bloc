import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taxi_customer_demo/core/enums/transaction_type.dart';
import 'package:taxi_customer_demo/core/styles/font_constants.dart';
import 'package:taxi_customer_demo/utils/extensions.dart';
import '../../core/styles/app_colors.dart';
import "../../l10n/localization.dart";

import '../../core/common/widgets/widgets.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      showAppBar: true,
      centerTitle: true,
      label: context.translate.wallet,
      bodyPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      body: Column(
        children: [
          /// balance container
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: AppColors.blackColor.withOpacity(0.07),
                  offset: const Offset(0, 2),
                  blurRadius: 2,
                  // blurStyle: BlurStyle.solid,
                ),
              ],
            ),
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonText(
                  text: context.translate.availableBalance,
                  fontSize: FontConstants.font_16,
                  fontWeight: FontWeightConstants.medium,
                  color: AppColors.expansionColor,
                ).paddingOnly(bottom: 8.h),
                CommonText(
                  text: "2000",
                  fontSize: FontConstants.font_24,
                  fontWeight: FontWeightConstants.medium,
                ),
              ],
            ),
          ).addDominoEffect(),

          /// wallet transaction history
          Expanded(
            child: ListView.builder(
              primary: false,
              itemCount: 2,
              itemBuilder: (context, index) {
                return _historyContainer(
                  transactionType: index % 2 == 0
                      ? TransactionType.added
                      : TransactionType.paid,
                ).addDominoEffect().paddingSymmetric(vertical: 12.h, horizontal: 8.w);
              },
            ).paddingSymmetric(vertical: 16.h),
          ),

          /// add money button
          CommonFilledButton(
            onPressed: () {},
            buttonText: context.translate.addMoney,
          )
        ],
      ),
    );
  }

  /// history container
  Widget _historyContainer({
    TransactionType transactionType = TransactionType.added,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // details
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonText(
              text: transactionType == TransactionType.added
                  ? "Money Deposited by admin"
                  : "Money paid for ride",
              fontSize: FontConstants.font_16,
              fontWeight: FontWeightConstants.medium,
            ),
            CommonText(
              text: transactionType == TransactionType.added
                  ? "2100"
                  : "100",
              fontSize: FontConstants.font_18,
              fontWeight: FontWeightConstants.medium,
              color: AppColors.redFontColor,
            ),
            CommonText(
              text: "5th Sep 02:50 PM",
              fontSize: FontConstants.font_12,
              fontWeight: FontWeightConstants.medium,
              color: AppColors.expansionColor,
            )
          ],
        ),

        // icon
        Icon(
          transactionType == TransactionType.added ? Icons.add : Icons.remove,
          size: 32,
          color: AppColors.primaryColor,
        )
      ],
    );
  }
}
