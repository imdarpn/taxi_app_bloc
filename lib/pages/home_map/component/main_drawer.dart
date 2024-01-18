import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taxi_customer_demo/core/common/common_methods.dart';
import 'package:taxi_customer_demo/core/enums/theme_type.dart';
import 'package:taxi_customer_demo/pages/home_map/bloc/home_map_bloc.dart';
import 'package:taxi_customer_demo/routes/navigation_methods.dart';
import 'package:taxi_customer_demo/utils/extensions.dart';
import '../../../core/common/app_constants/image_constants.dart';
import '../../../core/common/common_widgets.dart';
import '../../../core/styles/app_colors.dart';
import '../../../repository/theme/theme_bloc.dart';
import 'drawer_item.dart';

class MainDrawer extends StatefulWidget {
  final Widget child;
  final AdvancedDrawerController controller;

  const MainDrawer({
    super.key,
    required this.child,
    required this.controller,
  });

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      backdrop: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [AppColors.primaryColor, AppColors.primaryColor],
          ),
        ),
      ),
      controller: widget.controller,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      // openScale: 1.0,
      disabledGestures: true,
      childDecoration: const BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.blueAccent,
            spreadRadius: 1,
            offset: Offset(-25, 10),
            blurRadius: 2,
            blurStyle: BlurStyle.normal,
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(40)),
      ),
      drawer: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, themeState) {
          return DrawerItems(
            onTap: (index) {
              widget.controller.hideDrawer();
              context
                  .pushNamed(
                CommonMethods.getDrawerItemsModelList()[index].path,
              )
                  .then(
                (value) {
                  if (value == true) {
                    print("themeState: ${themeState.themeType}");
                    context.read<HomeMapBloc>().add(
                          HomeMapEvent.onMapStyleChanged(
                            isDark: themeState.themeType == ThemeType.darkTheme,
                          ),
                        );
                  }
                },
              );
            },
            closeDrawer: () {
              widget.controller.hideDrawer();
            },
          );
        },
      ),
      child: Container(
        color: AppColors.whiteColor,
        child: Stack(
          children: [
            widget.child,
            Positioned(
              left: 16.w,
              child: SafeArea(
                child: GestureDetector(
                  onTap: () {
                    if (widget.controller.value.visible) {
                      widget.controller.hideDrawer();
                    } else {
                      widget.controller.showDrawer();
                    }
                  },
                  child: ValueListenableBuilder<AdvancedDrawerValue>(
                    valueListenable: widget.controller,
                    builder: (_, value, __) {
                      return AnimatedSwitcher(
                        duration: const Duration(milliseconds: 250),
                        child: value.visible
                            ? SvgPicture.asset(
                                ImageConstants.backIcon,
                                colorFilter: const ColorFilter.mode(
                                  AppColors.transparentColor,
                                  BlendMode.srcIn,
                                ),
                                key: ValueKey<bool>(value.visible),
                              )
                            : CommonWidgets.showContainerImage(
                                icon: ImageConstants.menuIcon,
                              ),
                      );
                    },
                  ),
                ).paddingOnly(top: 6.h),
              ),
            ),
          ],
        ),
      ),
      /* child: CommonMapScaffold(
        leadingWidget: GestureDetector(
          onTap: () {
            if (widget.controller.value.visible) {
              widget.controller.hideDrawer();
            } else {
              widget.controller.showDrawer();
            }
          },
          child: ValueListenableBuilder<AdvancedDrawerValue>(
            valueListenable: widget.controller,
            builder: (_, value, __) {
              return AnimatedSwitcher(
                duration: const Duration(milliseconds: 250),
                child: value.visible
                    ? SvgPicture.asset(
                        ImageConstants.backIcon,
                        colorFilter: const ColorFilter.mode(
                          AppColors.transparentColor,
                          BlendMode.srcIn,
                        ),
                        key: ValueKey<bool>(value.visible),
                      )
                    : CommonWidgets.showContainerImage(
                        icon: ImageConstants.menuIcon,
                      ),
              );
            },
          ),
        ),
        body: widget.child,
      ),*/
    );
  }
}
