import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taxi_customer_demo/l10n/localization.dart';
import 'package:taxi_customer_demo/routes/navigation_methods.dart';

import 'bloc/payment_methods_bloc.dart';
import "../../utils/extensions.dart";
import '../../core/common/view_models/payment_method_model.dart';
import '../../core/common/widgets/widgets.dart';
import '../../core/styles/app_colors.dart';
import '../../core/styles/font_constants.dart';
import '../../repository/theme/theme_bloc.dart';

class PaymentMethodsScreen extends StatelessWidget {
  const PaymentMethodsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      showAppBar: true,
      label: context.translate.paymentMethods,
      body: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, themeState) {
          return BlocBuilder<PaymentMethodsBloc, PaymentMethodsState>(
            builder: (context, state) {
              return Column(
                children: [
                  /*Expanded(
                    child: Column(
                      children: [
                        /// cash
                        _paymentTypeView(
                          paymentMethodModel: PaymentMethodModel(
                            paymentMethodTitle: context.translate.cash,
                            */ /*     paymentTileName: context.translate.cash,
                            paymentTypeImage: ImageConstants.cash,
                            isSelected: true,*/ /*
                          ),
                        ),

                        /// wallet
                        _paymentTypeView(
                          paymentMethodModel: PaymentMethodModel(
                            paymentMethodTitle: context.translate.wallet,
                            */ /*paymentTileName: context.translate.wallet,
                            paymentTypeImage: ImageConstants.wallet,*/ /*
                          ),
                          colorFilter: ColorFilter.mode(
                            themeState.themeType == ThemeType.lightTheme
                                ? AppColors.blackColor
                                : AppColors.whiteColor,
                            BlendMode.srcIn,
                          ),
                        ),

                        /// card
                        _paymentTypeView(
                          paymentMethodModel: PaymentMethodModel(
                            paymentMethodTitle:
                                context.translate.creditAndDebitCard,
                            */ /* paymentTileName: context.translate.addNewCard,
                            paymentTypeImage: ImageConstants.cardCard,*/ /*
                          ),
                          colorFilter: ColorFilter.mode(
                            themeState.themeType == ThemeType.lightTheme
                                ? AppColors.blackColor
                                : AppColors.whiteColor,
                            BlendMode.srcIn,
                          ),
                          iconHeight: 22.h,
                          trailing: CommonWidgets.commonTrailingArrow(
                            iconColor:
                                themeState.themeType == ThemeType.lightTheme
                                    ? AppColors.blackColor
                                    : AppColors.whiteColor,
                          ),
                          onTap: () {
                            context.pushNamed(Routes.cardScreen);
                          },
                        ),
                      ],
                    ),
                  ),*/

                  Expanded(
                    child: ListView.builder(
                      itemCount: state.paymentMethodList.length,
                      itemBuilder: (context, index) {
                        return _paymentTypeView(
                          paymentMethodModel: state.paymentMethodList[index],
                        );
                      },
                    ),
                  ),
                  CommonFilledButton(
                    onPressed: () {},
                    buttonText: context.translate.confirmPayment,
                  ).paddingSymmetric(vertical: 16.h, horizontal: 16.w),
                ],
              );
            },
          );
        },
      ),
    );
  }

  Widget _paymentTypeView({
    required PaymentMethodModel paymentMethodModel,
    void Function()? onTap,
    ColorFilter? colorFilter,
    double? iconHeight,
    Widget? trailing,
  }) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: paymentMethodModel.paymentTypeList.length,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonText(
              text: paymentMethodModel.paymentMethodTitle,
              fontWeight: FontWeightConstants.medium,
            ).addDominoEffect(),
            CommonWidgets.commonSettingTile(
              isSelected: paymentMethodModel.paymentTypeList[index].isSelected,
              title: paymentMethodModel.paymentTypeList[index].paymentTileName,
              titleColor: paymentMethodModel.paymentTypeList[index].isSelected
                  ? AppColors.whiteColor
                  : null,
              onTap: () {
                if (paymentMethodModel.paymentTypeList[index].isReadOnly) {
                  context.pushNamed(Routes.cardScreen);
                } else {
                  context.read<PaymentMethodsBloc>().add(
                        PaymentMethodsEvent.onTapPaymentType(
                          paymentType:
                              paymentMethodModel.paymentTypeList[index],
                        ),
                      );
                }
              },
              leading: SvgPicture.asset(
                paymentMethodModel.paymentTypeList[index].paymentTypeImage,
                height: iconHeight ?? 35.h,
                colorFilter: colorFilter,
              ),
              trailing: trailing,
            ).paddingOnly(top: 8.h),
          ],
        ).paddingSymmetric(horizontal: 16.w, vertical: 8.h);
      },
    );
  }
}
