import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shimmer/shimmer.dart';
import 'package:taxi_customer_demo/core/common/widgets/common_filled_button.dart';
import 'package:taxi_customer_demo/core/enums/theme_type.dart';
import 'package:taxi_customer_demo/l10n/localization.dart';
import 'package:taxi_customer_demo/utils/extensions.dart';

import '../styles/ui_constants.dart';
import 'app_constants/image_constants.dart';
import '../../utils/custom_widgets/read_more_text_widget.dart';
import '../../core/styles/app_colors.dart';
import '../../core/styles/font_constants.dart';
import 'view_models/address_model.dart';
import 'widgets/common_text.dart';
import 'widgets/common_text_field.dart';

class CommonWidgets {
  static showSnackBar(String message, {bool success = true}) {
    // todo: snackbar
  }

  /// expandable text
  static ReadMoreText readMoreText({
    Color? color = Colors.black,
    double? fontSize,
    double? height,
    String? text,
    FontWeight? fontWeight,
    TextAlign? textAlign,
    int maxLine = 3,
    String fontFamily = FontFamilyConstants.fontName,
    TextDecoration textDecoration = TextDecoration.none,
    Color? decorationColor,
    Color? colorClickableText,
    TextOverflow textOverflow = TextOverflow.ellipsis,
    bool? softWrap,
  }) {
    return ReadMoreText(
      text ?? "",
      textAlign: textAlign,
      trimLines: maxLine,
      trimMode: TrimMode.Line,
      trimCollapsedText: "View more",
      trimExpandedText: "\nView less",
      lessStyle: TextStyle(
        color: color,
        decoration: TextDecoration.underline,
        decorationColor: decorationColor ?? color,
        fontSize: fontSize,
        height: height,
        fontWeight: fontWeight,
        overflow: textOverflow,
        fontFamily: fontFamily,
      ),
      moreStyle: TextStyle(
        color: color,
        decoration: TextDecoration.underline,
        decorationColor: decorationColor ?? color,
        fontSize: fontSize,
        height: height,
        fontWeight: fontWeight,
        overflow: textOverflow,
        fontFamily: fontFamily,
      ),
      colorClickableText: const Color(0xff041727).withOpacity(0.7),
      style: TextStyle(
        color: color,
        decoration: textDecoration,
        decorationColor: decorationColor ?? color,
        fontSize: fontSize,
        height: height,
        fontWeight: fontWeight,
        overflow: textOverflow,
        fontFamily: fontFamily,
      ),
    );
  }

  /// circular border
  static BorderRadius circularBorder({
    double radius = 15,
  }) {
    return BorderRadius.circular(radius);
  }

  static noInternetDialog({
    required BuildContext context,
  }) {
    Widget title = CommonText(
      text: context.translate.noInternet,
      fontSize: FontConstants.font_16,
      fontWeight: FontWeightConstants.semiBold,
      color: AppColors.blackColor.withOpacity(0.7),
    );
    Widget content = CommonText(
      text: context.translate.noInternetMsg,
      fontSize: FontConstants.font_14,
      fontWeight: FontWeightConstants.medium,
      color: AppColors.blackColor.withOpacity(0.6),
    );
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (dialogContext) {
        return Theme.of(context).platform == TargetPlatform.iOS
            ? PopScope(
                canPop: false,
                child: CupertinoAlertDialog(
                  title: title,
                  content: content,
                ),
              )
            : PopScope(
                canPop: false,
                child: Theme(
                  data: ThemeData(useMaterial3: false),
                  child: AlertDialog(
                    title: title,
                    content: content,
                  ),
                ),
              );
      },
    );
  }

  static showCustomDialog(context, String titleName, String titleContent,
      String leftButtonText, String rightButtonText, Function(int) callback) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(28.0)), //this right here
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  CommonText(
                      textAlign: TextAlign.left,
                      text: titleName,
                      fontFamily: FontFamilyConstants.fontName,
                      fontWeight: FontWeightConstants.bold,
                      fontSize: FontConstants.font_18,
                      color: AppColors.blackColor),
                  const SizedBox(
                    height: 24,
                  ),
                  CommonText(
                    textAlign: TextAlign.center,
                    text: titleContent,
                    fontFamily: FontFamilyConstants.fontName,
                    fontWeight: FontWeightConstants.semiBold,
                    fontSize: FontConstants.font_16,
                    color: AppColors.blackColor,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Row(
                      children: [
                        Expanded(
                          child: CommonFilledButton(
                            onPressed: () {
                              Navigator.pop(context);
                              callback(0);
                            },
                            buttonColor: AppColors.whiteColor,
                            // borderColor: AppColors.blackColor.withOpacity(0.3),
                            buttonTextColor:
                                AppColors.blackColor.withOpacity(0.5),
                            fontSize: FontConstants.font_14,
                            fontWeight: FontWeightConstants.medium,
                            buttonText: leftButtonText,
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: CommonFilledButton(
                            onPressed: () {
                              Navigator.pop(context);
                              callback(1);
                            },
                            buttonColor: AppColors.blackColor,
                            fontSize: FontConstants.font_14,
                            fontWeight: FontWeightConstants.medium,
                            buttonText: rightButtonText,
                            buttonTextColor: AppColors.whiteColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /*static void openLocationSettingDialog() {
    Widget title = CommonText(
      text: LocaleKeys.locationIsDisabled.tr,
      fontSize: FontConstants.font_16,
      fontWeight: FontWeightConstants.semiBold,
      color: AppColors.blackColor.withOpacity(0.7),
    );

    Widget contentAndroid = CommonText(
      text: LocaleKeys.pleaseEnableLocation.tr,
      fontSize: FontConstants.font_18,
      color: ColorConstants.blackColor.withOpacity(0.6),
    );

    Widget contentIOS = CommonText(
      text: LocaleKeys.enableLocationMessageIOS.tr,
      fontSize: FontConstants.font_14,
      fontWeight: FontWeightConstants.medium,
      color: AppColors.blackColor.withOpacity(0.6),
    );

    final actionsAndroid = <Widget>[
      TextButton(
        onPressed: () => Get.back(),
        child: CommonText(
          text: LocaleKeys.noThanks.tr,
          color: ColorConstants.primaryColor,
          fontWeight: FontWeightConstants.medium,
        ),
      ),
      TextButton(
        onPressed: () async {
          Geolocator.openLocationSettings().then(
                (_) => Navigator.pop(Get.overlayContext!),
          );
        },
        child: CommonText(
          text: LocaleKeys.ok.tr,
          color: ColorConstants.primaryColor,
          fontWeight: FontWeightConstants.medium,
        ),
      ),
    ];

    final actionsIOS = <Widget>[
      TextButton(
        onPressed: () => Get.back(),
        child: CommonText(
          text: LocaleKeys.cancel.tr,
          color: ColorConstants.primaryColor,
          fontWeight: FontWeightConstants.semiBold,
        ),
      ),
    ];
    Future.delayed(
      const Duration(milliseconds: 200),
          () {
        showDialog(
          context: Get.overlayContext!,
          builder: (dialogContext) {
            return GetPlatform.isIOS
                ? CupertinoAlertDialog(
              title: title,
              content: contentIOS,
              actions: actionsIOS,
            )
                : Theme(
              data: ThemeData(useMaterial3: false),
              child: AlertDialog(
                title: contentAndroid,
                actions: actionsAndroid,
              ),
            );
          },
        );
      },
    );
  }*/

  /// load network image
  static Widget loadNetworkImage(
    String url, {
    Color? color = Colors.white,
    double? borderRadius,
    double? width,
    double? height,
    BoxFit fit = BoxFit.fill,
    bool isProfile = false,
    String placeholderString = "",
    BlendMode? backgroundBlendMode,
  }) {
    bool isValidUrl = Uri.tryParse(url)?.isAbsolute == true &&
        url != "http://dev.thecuree.com/images/default.png";
    return Container(
      width: width ?? double.infinity,
      height: height ?? double.infinity,
      decoration: BoxDecoration(
        backgroundBlendMode: backgroundBlendMode,
        color: color,
        border: Border.all(color: AppColors.blackColor, width: 0.1),
        borderRadius: BorderRadius.circular(borderRadius ?? 0),
        boxShadow: isProfile
            ? [
                BoxShadow(
                  color: Colors.grey.shade200,
                  offset: const Offset(0.0, 0.0),
                  blurRadius: 8,
                ),
              ]
            : [],
      ),
      child: isValidUrl
          ? ClipRRect(
              borderRadius: BorderRadius.circular(borderRadius ?? 0),
              child: CachedNetworkImage(
                imageUrl: url,
                fit: fit,
                progressIndicatorBuilder: (context, url, downloadProgress) {
                  return Shimmer.fromColors(
                    baseColor: Colors.black12,
                    highlightColor: Colors.white,
                    loop: 15,
                    child: Container(
                      height: height,
                      width: width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.whiteColor,
                      ),
                    ),
                  );
                },
                errorWidget: (context, url, error) {
                  return Image.network(
                    url,
                    errorBuilder: (context, error, stackTrace) =>
                        _buildPlaceHolderImage(borderRadius),
                    fit: BoxFit.fill,
                  );
                },
              ),
            )
          : isProfile && placeholderString != ""
              ? _buildPlaceHolderProfile(borderRadius, placeholderString)
              : _buildPlaceHolderImage(borderRadius),
    );
  }

  /// placeholder image
  static Widget _buildPlaceHolderImage(double? borderRadius) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius ?? 0),
      child: Center(
        child: SvgPicture.asset(
          "ImageConstants.iconHome",
          fit: BoxFit.cover,
          height: 38,
          width: 38,
          colorFilter: const ColorFilter.mode(
            AppColors.transparentColor,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }

  /// placeholder profile
  static Widget _buildPlaceHolderProfile(
    double? borderRadius,
    String placeholderString,
  ) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius ?? 0),
      child: Center(
        child: CommonText(
          text: placeholderString.substring(0, 1),
          fontSize: FontConstants.font_26,
          fontWeight: FontWeightConstants.medium,
        ),
      ),
    );
  }

  static Widget noDataView({
    String title = "",
    double? logoHeight = 100,
    double? logoWidth = 100,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          "ImageConstants.notificationEmptyIcon",
          height: logoHeight,
          width: logoWidth,
        ),
        const SizedBox(
          height: 24,
        ),
        CommonText(
          text: title,
          fontWeight: FontWeightConstants.bold,
          fontSize: 18,
          color: AppColors.blackColor,
        ),
      ],
    );
  }

  static Widget commonTextWithFunction(
      {Color? color = Colors.black,
      double? fontSize,
      double? height,
      String? text,
      FontWeight? fontWeight,
      TextAlign? textAlign,
      int? maxLine = 3,
      String fontFamily = FontFamilyConstants.fontName,
      TextDecoration textDecoration = TextDecoration.none,
      Function? onClick,
      Color decorationColor = Colors.transparent}) {
    return GestureDetector(
      onTap: () {
        onClick?.call();
      },
      child: Text(
        text ?? "",
        maxLines: maxLine,
        textAlign: textAlign,
        style: TextStyle(
          color: color,
          decoration: textDecoration,
          decorationColor: decorationColor,
          fontSize: fontSize,
          height: height,
          fontWeight: fontWeight,
          overflow: TextOverflow.ellipsis,
          fontFamily: fontFamily,
        ),
      ),
    );
  }

  /// common container
  static Widget commonContainer({
    double? width,
    double? height,
    AlignmentGeometry? alignment,
    double paddingHorizontal = 0,
    double paddingVertical = 0,
    BoxShape? shape,
    Color color = AppColors.whiteColor,
    Widget? child,
    double borderRadius = 15,
    Color borderColor = AppColors.transparentColor,
    double borderWidth = 1.0,
    DecorationImage? decorationImage,
    List<BoxShadow>? boxShadow,
    Gradient? gradient,
    BoxConstraints? constraints,
  }) {
    return Container(
      width: width,
      height: height,
      alignment: alignment,
      constraints: constraints,
      padding: EdgeInsets.symmetric(
        horizontal: paddingHorizontal,
        vertical: paddingVertical,
      ),
      decoration: BoxDecoration(
        shape: shape ?? BoxShape.rectangle,
        boxShadow: boxShadow,
        color: color,
        borderRadius:
            shape == null ? circularBorder(radius: borderRadius) : null,
        border: Border.all(
          color: borderColor,
          width: borderWidth,
        ),
        image: decorationImage,
        gradient: gradient,
      ),
      child: child,
    );
  }

  static Widget showContainerImage({
    required String icon,
    Color? containerColor,
  }) {
    return Container(
      width: 48.w,
      height: 48.h,
      padding: const EdgeInsets.all(8),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.fieldBorderColor,
        ),
        color: containerColor ?? AppColors.whiteColor.withOpacity(0.8),
        borderRadius: BorderRadius.circular(8),
      ),
      child: SvgPicture.asset(
        icon,
        width: 24.w,
        height: 26.h,
        colorFilter: const ColorFilter.mode(
          AppColors.blackColor,
          BlendMode.srcIn,
        ),
      ),
    );
  }

  static Widget stepperWithTextField({
    bool? showDottedLine = true,
    ThemeType themeType = ThemeType.lightTheme,
    List<AddressModel> addressModelList = const [],
    Function(int, int)? onTapClose,
    Function(int, int)? onTapAdd,
    required BuildContext context,
  }) {
    return ListView.builder(
      itemCount: addressModelList.length, //list.length
      shrinkWrap: true,
      primary: false,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  index == 0
                      ? themeType == ThemeType.lightTheme
                          ? ImageConstants.firstLocationIcon
                          : ImageConstants.firstLocationIconDark
                      : themeType == ThemeType.lightTheme
                          ? ImageConstants.secondLocation
                          : ImageConstants.secondLocationDark,
                  height: 50.h,
                  width: 30.w,
                ),
                CommonText(
                  text: "2:02 PM",
                  color: AppColors.lightGreyColor,
                  fontSize: FontConstants.font_12,
                ).paddingOnly(left: 10),
                Expanded(
                  child: CommonTextField(
                    allowAnimation: false,
                    hintText: context.translate.enterDestination,
                    textInputType: TextInputType.streetAddress,
                    textEditingController:
                        addressModelList[index].addressController,
                    inputFontSize: FontConstants.font_12,
                    inputFontWeight: FontWeightConstants.regular,
                    maxLength: UIConstants.kMobileNumberDigits,
                    length: UIConstants.kMobileNumberDigits,
                    counterText: "",
                  ).paddingSymmetric(
                    vertical: 0.h,
                    horizontal: 10.w,
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      if (index == addressModelList.length - 1) {
                        onTapAdd!(1, index);
                      } else if (addressModelList.length >= 3 && index > 0) {
                        onTapClose!(1, index);
                      }
                    },
                    child: index == 0 && addressModelList.isNotEmpty
                        ? Container(
                            width: 10,
                          )
                        : Icon(
                            index == addressModelList.length - 1
                                ? Icons.add
                                : addressModelList.length >= 3 && index > 0
                                    ? Icons.close
                                    : Icons.add,
                            size: 24,
                            color: themeType == ThemeType.lightTheme
                                ? AppColors.primaryColor
                                : AppColors.whiteColor,
                          ) /*SvgPicture.asset(
                          index == addressModelList.length - 1
                              ? ImageConstants.plusIcon
                              : addressModelList.length >= 3 && index > 0
                                  ? ImageConstants.closeIcon
                                  : ImageConstants.plusIcon,
                          height: 16,
                          width: 16,
                        ),*/
                    )
              ],
            ),
            if (showDottedLine!) ...[
              index != addressModelList.length - 1
                  ? Column(
                      mainAxisSize: MainAxisSize.min,
                      children: List.generate(
                        3,
                        (ii) => Padding(
                          padding: const EdgeInsets.only(
                              left: 14, right: 14, top: 2, bottom: 2),
                          child: Container(
                            height: 3,
                            width: 2,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    )
                  : const SizedBox(
                      height: 21,
                    )
            ] else ...[
              const SizedBox(
                height: 21,
              )
            ],
          ],
        ).paddingOnly(left: 16, right: 16);
      },
    );
  }

  static Widget stepperWithText({
    bool? showDottedLine = true,
    ThemeType themeType = ThemeType.lightTheme,
    List<AddressModel> addressList = const [],
    Function(int, int)? onTap,
  }) {
    return ListView.builder(
      itemCount: addressList.length,
      shrinkWrap: true,
      primary: false,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            onTap!(1, index);
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    index == 0
                        ? themeType == ThemeType.lightTheme
                            ? ImageConstants.firstLocationIcon
                            : ImageConstants.firstLocationIconDark
                        : themeType == ThemeType.lightTheme
                            ? ImageConstants.secondLocation
                            : ImageConstants.secondLocationDark,
                    height: 40.h,
                    width: 28.w,
                  ),
                  Expanded(
                    child: CommonText(
                      text: addressList[index].address,
                      fontSize: FontConstants.font_12,
                    ).paddingSymmetric(vertical: 0.h, horizontal: 10.w),
                  ),
                ],
              ),
              if (showDottedLine!) ...[
                index != addressList.length - 1
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Transform.translate(
                            offset: const Offset(0, 10),
                            child: Container(
                              color: Colors.grey.withAlpha(60),
                              height: 0.5,
                              padding:
                                  const EdgeInsets.only(left: 10, right: 20),
                            ).paddingOnly(left: 25),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: List.generate(
                              3,
                              (ii) => Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, right: 10, top: 2, bottom: 2),
                                child: Container(
                                  height: 3,
                                  width: 2,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    : const SizedBox(
                        height: 12,
                      )
              ] else ...[
                const SizedBox(
                  height: 21,
                )
              ],
            ],
          ),
        );
      },
    );
  }

  static commonSquareIcon({String icon = ImageConstants.backIcon}) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      height: 45,
      width: 45,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: AppColors.whiteColor),
      child: SvgPicture.asset(
        icon,
        height: 16.h,
        width: 8.w,
      ),
    );
  }

  static Widget commonSettingTile({
    required String title,
    Color? titleColor,
    Widget? trailing,
    Widget? leading,
    Color? tileColor,
    Color selectedTileColor = AppColors.primaryColor,
    bool isSelected = false,
    required Function onTap,
  }) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      child: ListTile(
        selected: isSelected,
        selectedTileColor: selectedTileColor,
        onTap: () => onTap.call(),
        leading: leading,
        tileColor: tileColor,
        title: CommonText(
          text: title,
          fontFamily: FontFamilyConstants.fontName,
          fontWeight: FontWeightConstants.semiBold,
          fontSize: FontConstants.font_16,
          color: titleColor,
        ),
        trailing: trailing,
      ),
    ).addDominoEffect();
  }

  static Widget commonTrailingArrow({
    Color iconColor = AppColors.primaryColor,
    Offset offset = const Offset(16, 0),
    double iconSize = 20,
  }) {
    return Transform.translate(
      offset: offset,
      child: Icon(
        Icons.arrow_forward_ios_outlined,
        size: iconSize,
        color: iconColor,
      ),
    );
  }

  static Widget commonSettingWithSubTile(
      {required String title,
      required String subtitle,
      Widget? trailing,
      Widget? leading,
      required Function onTap}) {
    return ListTile(
      onTap: () => onTap.call(),
      leading: leading ?? SizedBox(),
      title: CommonText(
        text: title,
        fontFamily: FontFamilyConstants.fontName,
        fontWeight: FontWeight.w600,
        fontSize: FontConstants.font_16,
      ),
      subtitle: CommonText(
        text: subtitle,
        fontFamily: FontFamilyConstants.fontName,
        fontWeight: FontWeight.w400,
        fontSize: FontConstants.font_10,
      ),
      trailing: trailing,
    );
  }

  static InputDecoration inputDecoration({
    AutovalidateMode? autoValidateMode,
    bool filled = true,
    Color? filledColor,
    TextEditingController? textEditingController,
    Color textColor = AppColors.blackColor,
    TextAlign textAlign = TextAlign.start,
    Widget? suffixIcon,
    Widget? prefixIcon,
    EdgeInsets contentPadding =
        const EdgeInsets.symmetric(horizontal: 24, vertical: 0),
    double? letterSpacing,
    double? wordSpacing,
    double? inputFontSize,
    FontWeight inputFontWeight = FontWeightConstants.medium,
    double? headerFontSize,
    FontWeight? headerFontWeight,
    String fontFamily = FontFamilyConstants.fontName,
    String? headerText,
    String? counterText,
    String? hintText,
    Color hintColor = AppColors.hintColor,
    double? hintFontSize,
    FontWeight? hintFontWeight,
    Color borderColor = AppColors.fieldBorderColor,
    double borderRadius = UIConstants.kTextFieldBorderRadius,
    Function? onEditingComplete,
    Function? onFieldSubmitted,
    Function(String)? onChanged,
    Function? onTap,

    /// validation
    String? errorMessage,
    String? validationMessage,
    String? validationRegex,
    int? value,
    int? length,
    String? prefixText,
    String? lengthMessage,
    FocusNode? focusNode,
    int? minLines,
    int? maxLines,
    int? maxLength,
    List<TextInputFormatter> inputFormat = const [],
    TextInputType textInputType = TextInputType.text,
    TextInputAction textInputAction = TextInputAction.done,
    FocusNode? nextFocusNode,
    TextCapitalization textCapitalization = TextCapitalization.none,
  }) {
    return InputDecoration(
      contentPadding: contentPadding,
      counterStyle: const TextStyle(color: AppColors.greyColor),
      counterText: counterText,
      fillColor: filledColor ?? AppColors.whiteColor,
      filled: filled,
      // labelText: 'Number',
      hintText: hintText ?? 'XXXX XXXX XXXX XXXX',
      hintStyle: TextStyle(
        color: hintColor,
        fontSize: hintFontSize ?? FontConstants.font_14,
        fontWeight: hintFontWeight ?? inputFontWeight,
        letterSpacing: letterSpacing,
        wordSpacing: wordSpacing,
      ),
      errorStyle: const TextStyle(color: AppColors.redColor, fontSize: 0),
      errorMaxLines: 3,
      prefixIcon: prefixIcon == null
          ? null
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: prefixIcon,
            ),
      suffixIcon: suffixIcon == null
          ? null
          : SizedBox(
              height: 20,
              child: Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: suffixIcon,
              ),
            ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: BorderSide(color: borderColor ?? AppColors.whiteColor),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: BorderSide(
          color: borderColor ?? AppColors.transparentColor,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: BorderSide(
          color: borderColor ?? AppColors.transparentColor,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: BorderSide(
          color: AppColors.redColor ?? AppColors.transparentColor,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: BorderSide(
          color: AppColors.redColor ?? AppColors.transparentColor,
        ),
      ),
    );
  }
}
