import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/countries.dart';

import '../../styles/app_colors.dart';
import '../../styles/font_constants.dart';
import '../../styles/ui_constants.dart';
import '../common_methods.dart';
import 'common_country_dialog.dart';
import 'common_text.dart';
import 'common_text_field.dart';

class CommonPhoneField extends StatelessWidget {
  final Country? selectedCountry;
  final void Function(Country)? onCountryChanged;
  final bool allowAnimation;
  final bool showCountryFlag;
  final AutovalidateMode? autoValidateMode;
  final bool autofocus;
  final bool expands;
  final bool readOnly;
  final bool enabled;
  final bool filled;
  final Color? filledColor;
  final TextEditingController? textEditingController;
  final Color textColor;
  final TextAlign textAlign;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool obscureText;
  final EdgeInsets contentPadding;

  final double? letterSpacing;
  final double? wordSpacing;
  final double? inputFontSize;
  final FontWeight inputFontWeight;
  final double? headerFontSize;
  final FontWeight? headerFontWeight;
  final String fontFamily;
  final String? headerText;
  final String? counterText;
  final String? hintText;
  final Color hintColor;
  final double? hintFontSize;
  final FontWeight? hintFontWeight;
  final Color borderColor;
  final double borderRadius;
  final Function? onEditingComplete;
  final Function? onFieldSubmitted;
  final Function(String)? onChanged;
  final Function? onTap;

  /// validation
  final bool allowValidation;
  final String? errorMessage;
  final String? validationMessage;
  final String? validationRegex;
  final int? value;
  final int? length;
  final String? prefixText;
  final String? lengthMessage;
  final FocusNode? focusNode;
  final int? minLines;
  final int? maxLines;
  final int? maxLength;
  final List<TextInputFormatter> inputFormat;
  final TextInputType textInputType;

  final TextInputAction textInputAction;
  final FocusNode? nextFocusNode;
  final TextCapitalization textCapitalization;

  const CommonPhoneField({
    super.key,
    this.selectedCountry,
    this.onCountryChanged,
    this.showCountryFlag = true,
    this.allowAnimation = true,
    this.autoValidateMode,
    this.autofocus = false,
    this.expands = false,
    this.readOnly = false,
    this.enabled = true,
    this.filled = true,
    this.filledColor,
    this.textEditingController,
    this.textColor = AppColors.blackColor,
    this.textAlign = TextAlign.start,
    this.suffixIcon,
    this.prefixIcon,
    this.obscureText = false,
    this.contentPadding =
        const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
    this.letterSpacing,
    this.wordSpacing,
    this.inputFontSize,
    this.inputFontWeight = FontWeightConstants.medium,
    this.headerFontSize,
    this.headerFontWeight,
    this.fontFamily = FontFamilyConstants.fontName,
    this.headerText,
    this.counterText,
    this.hintText,
    this.hintColor = AppColors.hintColor,
    this.hintFontSize,
    this.hintFontWeight,
    this.borderColor = AppColors.fieldBorderColor,
    this.borderRadius = UIConstants.kTextFieldBorderRadius,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.onChanged,
    this.onTap,
    this.allowValidation = true,
    this.errorMessage,
    this.validationMessage,
    this.validationRegex,
    this.value,
    this.length,
    this.prefixText,
    this.lengthMessage,
    this.focusNode,
    this.minLines,
    this.maxLines,
    this.maxLength,
    this.inputFormat = const [],
    this.textInputType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.nextFocusNode,
    this.textCapitalization = TextCapitalization.none,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// country picker
        if (selectedCountry != null)
          InkWell(
            highlightColor: AppColors.transparentColor,
            splashColor: AppColors.transparentColor,
            onTap: () => CommonCountryDialog.openCountryDialog(
              selectedCountry: selectedCountry!,
              onCountryChanged: (country) => onCountryChanged?.call(country),
              context: context,
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: AppColors.whiteColor,
                border: Border.all(
                  color: borderColor,
                ),
              ),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /// flag icon
                  Image.asset(
                    CommonMethods.getCountryFlag(
                        countryCode: selectedCountry!.code),
                    package: 'intl_phone_field',
                    width: 22,
                  ),

                  const SizedBox(
                    width: 7,
                  ),

                  /// country dial code
                  CommonText(
                    text:
                        "+${selectedCountry?.dialCode ?? countries.firstWhere((item) => item.code == ("US"), orElse: () => countries.first).dialCode}",
                    fontWeight: FontWeightConstants.medium,
                    fontSize: FontConstants.font_18,
                    color: enabled == false
                        ? textColor.withOpacity(0.3)
                        : textColor,
                  ),
                ],
              ),
            ),
          ),

        const SizedBox(
          width: 8,
        ),

        /// field
        Expanded(
          child: CommonTextField(
            allowAnimation: allowAnimation,
            borderRadius: borderRadius,
            autofocus: autofocus,
            enabled: enabled,
            onTap: () => onTap?.call(),
            textAlign: textAlign,
            value: value,
            minLines: minLines,
            contentPadding: contentPadding,
            maxLines: maxLines,
            textInputAction: textInputAction,
            textInputType: textInputType,
            hintText: hintText,
            inputFontWeight: inputFontWeight,
            inputFontSize: inputFontSize,
            textCapitalization: textCapitalization,
            lengthMessage: lengthMessage,
            length: length,
            nextFocusNode: nextFocusNode,
            focusNode: focusNode,
            counterText: counterText,
            fontFamily: fontFamily,
            allowValidation: allowValidation,
            autoValidateMode: autoValidateMode,
            borderColor: borderColor,
            errorMessage: errorMessage,
            expands: expands,
            filled: filled,
            filledColor: filledColor,
            headerFontSize: headerFontSize,
            headerFontWeight: headerFontWeight,
            headerText: headerText,
            hintColor: hintColor,
            hintFontSize: hintFontSize,
            hintFontWeight: hintFontWeight,
            inputFormat: inputFormat,
            letterSpacing: letterSpacing,
            maxLength: maxLength,
            obscureText: obscureText,
            onChanged: (p0) => onChanged?.call(p0),
            onEditingComplete: () => onEditingComplete?.call(),
            onFieldSubmitted: () => onFieldSubmitted?.call(),
            prefixIcon: prefixIcon,
            prefixText: prefixText,
            readOnly: readOnly,
            suffixIcon: suffixIcon,
            textColor: textColor,
            textEditingController: textEditingController,
            validationMessage: validationMessage,
            validationRegex: validationRegex,
            wordSpacing: wordSpacing,
          ),
        ),
      ],
    );
  }
}
