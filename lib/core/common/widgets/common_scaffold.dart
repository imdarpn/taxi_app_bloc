import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taxi_customer_demo/core/common/app_constants/image_constants.dart';
import 'package:taxi_customer_demo/core/styles/app_colors.dart';
import 'package:taxi_customer_demo/routes/navigation_methods.dart';
import 'package:taxi_customer_demo/utils/extensions.dart';

import '../../../repository/theme/theme_bloc.dart';
import '../../enums/theme_type.dart';
import '../../styles/font_constants.dart';
import 'common_text.dart';

class CommonScaffold extends StatelessWidget {
  final bool showAppBar;
  final bool showBackIcon;
  final bool centerTitle;
  final String? label;
  final Color? backgroundColor;
  final Widget? body;
  final VoidCallback? onTap;
  final Widget? bottomNavigationBar;
  final EdgeInsetsGeometry bodyPadding;
  final Widget? floatingActionButton;
  final bool? resizeToAvoidBottomInset;
  final Widget? titleWidget;
  final bool showLabel;
  final double? titleSpacing;

  const CommonScaffold({
    super.key,
    this.showAppBar = false,
    this.showBackIcon = true,
    this.centerTitle = false,
    this.label = "",
    this.backgroundColor,
    this.onTap,
    this.body,
    this.bottomNavigationBar,
    // this.bodyPadding = const EdgeInsets.symmetric(horizontal: 16.0),
    this.bodyPadding = EdgeInsets.zero,
    this.floatingActionButton,
    this.resizeToAvoidBottomInset,
    this.titleWidget,
    this.showLabel = true,
    this.titleSpacing,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      extendBodyBehindAppBar: true,
      appBar: showAppBar
          ? AppBar(
              leadingWidth: showBackIcon ? 72 : 0,
              backgroundColor: backgroundColor,
              titleSpacing: titleSpacing,
              scrolledUnderElevation: 0,
              title: showLabel
                  ? CommonText(
                      text: label!,
                      fontFamily: FontFamilyConstants.fontFamilyMedel,
                      fontSize: FontConstants.font_28,
                      fontWeight: FontWeight.w400,
                      textAlign: TextAlign.center,
                    )
                  : titleWidget,
              centerTitle: centerTitle,
              leading: showBackIcon
                  ? GestureDetector(
                      onTap: onTap ??
                          () {
                            context.pop();
                          },
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        padding: const EdgeInsets.all(8),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.fieldBorderColor,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: BlocBuilder<ThemeBloc, ThemeState>(
                          builder: (context, state) {
                            return SvgPicture.asset(
                              ImageConstants.backIcon,
                              height: 16.h,
                              width: 8.w,
                              colorFilter: ColorFilter.mode(
                                state.themeType == ThemeType.lightTheme
                                    ? AppColors.blackColor
                                    : AppColors.whiteColor,
                                BlendMode.srcIn,
                              ),
                            );
                          },
                        ),
                      ),
                    ).paddingOnly(right: 8.w, left: 8.w)
                  : const SizedBox(),
            )
          : null,
      body: SafeArea(
        child: Padding(
          padding: bodyPadding,
          child: body,
        ),
      ),
      floatingActionButton: floatingActionButton,
      bottomNavigationBar: bottomNavigationBar != null
          ? SafeArea(child: bottomNavigationBar!)
          : null,
    );
  }
}
