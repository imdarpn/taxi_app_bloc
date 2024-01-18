import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:taxi_customer_demo/core/common/app_constants/image_constants.dart';
import '../common_widgets.dart';
import '../../styles/app_colors.dart';
import 'package:taxi_customer_demo/routes/navigation_methods.dart';

class CommonMapScaffold extends StatelessWidget {
  final bool showAppBar;
  final bool showBackIcon;
  final bool centerTitle;
  final Widget? body;
  final Widget? title;
  final Widget? leadingWidget;
  final VoidCallback? onTap;
  final Widget? bottomNavigationBar;
  final EdgeInsetsGeometry bodyPadding;
  final Widget? floatingActionButton;

  const CommonMapScaffold({
    super.key,
    this.showAppBar = true,
    this.showBackIcon = true,
    this.centerTitle = false,
    this.onTap,
    this.body,
    this.title,
    this.leadingWidget,
    this.bottomNavigationBar,
    this.bodyPadding = EdgeInsets.zero,
    this.floatingActionButton,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: showAppBar
          ? AppBar(
              backgroundColor: AppColors.transparentColor,
              leadingWidth: showBackIcon ? 72 : 0,
              leading: showBackIcon
                  ? leadingWidget ??
                      GestureDetector(
                        onTap: onTap ??
                            () {
                              context.pop();
                            },
                        child: CommonWidgets.showContainerImage(
                          icon: ImageConstants.menuIcon,
                        ),
                      )
                  : const SizedBox(),
              title: title ?? const SizedBox(),
              centerTitle: centerTitle,
            )
          : null,
      body: Padding(
        padding: bodyPadding,
        child: body,
      ),
      floatingActionButton: floatingActionButton,
      bottomNavigationBar: bottomNavigationBar != null
          ? SafeArea(child: bottomNavigationBar!)
          : null,
    );
  }
}
