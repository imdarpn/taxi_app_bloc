import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taxi_customer_demo/utils/extensions.dart';
import 'package:taxi_customer_demo/l10n/localization.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

import '../../core/common/widgets/common_outlined_button.dart';
import '../../core/common/widgets/widgets.dart';
import '../../core/common/app_constants/image_constants.dart';
import '../../core/enums/theme_type.dart';
import '../../core/styles/app_colors.dart';
import '../../core/styles/ui_constants.dart';
import '../../repository/theme/theme_bloc.dart';
import 'bloc/card_bloc.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return CommonScaffold(
      centerTitle: true,
      showAppBar: true,
      label: context.translate.addCard,
      body: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, themeState) {
          return BlocBuilder<CardBloc, CardState>(
            builder: (context, state) {
              return Column(
                children: [
                  CreditCardWidget(
                    enableFloatingCard: false,
                    glassmorphismConfig:
                        _getGlassmorphismConfig(state, themeState),
                    cardNumber: state.cardNumber,
                    expiryDate: state.expiryDate,
                    cardHolderName: state.cardHolderName,
                    cvvCode: state.cvvCode,
                    // bankName: 'Axis Bank',
                    frontCardBorder: state.useGlassMorphism
                        ? null
                        : Border.all(color: Colors.grey),
                    backCardBorder: state.useGlassMorphism
                        ? null
                        : Border.all(color: Colors.grey),
                    showBackView: state.isCvvFocused,
                    obscureCardNumber: true,
                    obscureCardCvv: true,
                    isHolderNameVisible: true,
                    cardBgColor: AppColors.primaryColor,
                    backgroundImage: state.useBackgroundImage
                        ? 'assets/images/card_bg.png'
                        : null,
                    isSwipeGestureEnabled: true,
                    onCreditCardWidgetChange:
                        (CreditCardBrand creditCardBrand) {},
                    customCardTypeIcons: <CustomCardTypeIcon>[
                      CustomCardTypeIcon(
                        cardType: CardType.mastercard,
                        cardImage: Image.asset(
                          'assets/images/mastercard.png',
                          height: 48,
                          width: 48,
                        ),
                      ),
                    ],
                  ).addDominoEffect(),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          CreditCardForm(
                            formKey: formKey,
                            obscureCvv: true,
                            obscureNumber: true,
                            cardNumber: state.cardNumber,
                            cvvCode: state.cvvCode,
                            isHolderNameVisible: true,
                            isCardNumberVisible: true,
                            isExpiryDateVisible: true,
                            cardHolderName: state.cardHolderName,
                            expiryDate: state.expiryDate,
                            cardHolderValidator: (value) {
                              print("widget $value");
                              return _cvvValidator(
                                value,
                                "widget.cvvValidationMessage",
                              );
                            },
                            inputConfiguration: InputConfiguration(
                              cardNumberDecoration:
                                  CommonWidgets.inputDecoration(
                                hintText: context.translate.cardNumber,
                                prefixIcon: SvgPicture.asset(
                                  ImageConstants.cardSecurity,
                                ),
                                textInputType: TextInputType.emailAddress,
                                maxLength: UIConstants.kEmailFieldLength,
                                length: UIConstants.kEmailFieldLength,
                                counterText: "",
                                textInputAction: TextInputAction.next,
                              ),
                              /*InputDecoration(
                          labelText: 'Number',
                          hintText: 'XXXX XXXX XXXX XXXX',
                        ),*/
                              expiryDateDecoration:
                                  CommonWidgets.inputDecoration(
                                hintText: context.translate.expiry,
                                prefixIcon: SvgPicture.asset(
                                  ImageConstants.calendar,
                                  colorFilter: const ColorFilter.mode(
                                    AppColors.blackColor,
                                    BlendMode.srcIn,
                                  ),
                                ),
                                textInputType: TextInputType.number,
                                maxLength: UIConstants.kEmailFieldLength,
                                length: UIConstants.kEmailFieldLength,
                                counterText: "",
                                textInputAction: TextInputAction.next,
                              ),
                              cvvCodeDecoration: CommonWidgets.inputDecoration(
                                hintText: context.translate.cvv,
                                prefixIcon: SvgPicture.asset(
                                  ImageConstants.cvv,
                                  colorFilter: const ColorFilter.mode(
                                    AppColors.blackColor,
                                    BlendMode.srcIn,
                                  ),
                                ),
                                textInputType: TextInputType.number,
                                maxLength: UIConstants.kCvvLength,
                                length: UIConstants.kCvvLength,
                                counterText: "",
                                textInputAction: TextInputAction.next,
                              ),
                              cardHolderDecoration:
                                  CommonWidgets.inputDecoration(
                                hintText: context.translate.cardHolderName,
                                prefixIcon: SvgPicture.asset(
                                  ImageConstants.cardIcon,
                                ),
                                textInputType: TextInputType.emailAddress,
                                counterText: "",
                                textInputAction: TextInputAction.next,
                              ),
                            ),
                            onCreditCardModelChange:
                                (CreditCardModel creditCardModel) {
                              context.read<CardBloc>().add(
                                    CardEvent.onCreditCardChanged(
                                      creditCardModel: creditCardModel,
                                    ),
                                  );
                            },
                          ).addDominoEffect(),
                          const SizedBox(height: 20),
                          CommonOutlinedButton(
                            onPressed: () {
                              context.read<CardBloc>().add(
                                    CardEvent.onValidateCard(
                                      formKey: formKey,
                                    ),
                                  );
                            },
                            buttonText: context.translate.addCard,
                            borderRadius: 32,
                          ).paddingSymmetric(horizontal: 16.w),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }

  Glassmorphism? _getGlassmorphismConfig(
      CardState cardState, ThemeState themeState) {
    if (!cardState.useGlassMorphism) {
      return null;
    }

    final LinearGradient gradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: <Color>[Colors.grey.withAlpha(50), Colors.grey.withAlpha(50)],
      stops: const <double>[0.3, 0],
    );

    return themeState.themeType == ThemeType.lightTheme
        ? Glassmorphism(blurX: 8.0, blurY: 16.0, gradient: gradient)
        : Glassmorphism.defaultConfig();
  }

  static String? _cvvValidator(String? value, String errorMsg) {
    return (value?.isEmpty ?? true) || ((value?.length ?? 3) < 3)
        ? errorMsg
        : null;
  }
}
