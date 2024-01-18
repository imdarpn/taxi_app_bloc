import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:taxi_customer_demo/core/common/widgets/common_outlined_button.dart';
import 'package:taxi_customer_demo/core/styles/ui_constants.dart';
import 'package:taxi_customer_demo/l10n/localization.dart';
import 'package:taxi_customer_demo/pages/ride_map/enum/ride_view_status.dart';
import 'package:taxi_customer_demo/routes/navigation_methods.dart';
import 'package:taxi_customer_demo/utils/extensions.dart';

import '../../core/common/app_constants/icon_constants.dart';
import '../../core/common/app_constants/image_constants.dart';
import '../../core/common/app_constants/string_constants.dart';
import '../../core/common/widgets/widgets.dart';
import '../../core/enums/theme_type.dart';
import '../../core/styles/app_colors.dart';
import '../../core/styles/font_constants.dart';
import '../../repository/theme/theme_bloc.dart';
import 'bloc/ride_map_bloc.dart';

class RideMapScreen extends StatelessWidget {
  const RideMapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // map view
        BlocConsumer<ThemeBloc, ThemeState>(
          listener: (context, state) {
            context.read<RideMapBloc>().add(
                  RideMapEvent.onMapStyleChanged(
                    isDark: state.themeType == ThemeType.darkTheme,
                  ),
                );
          },
          builder: (context, themeState) {
            return BlocConsumer<RideMapBloc, RideMapState>(
              listener: (context, state) {},
              builder: (context, state) {
                return Container(
                  color: AppColors.transparentColor,
                  child: Stack(
                    children: [
                      /// map view
                      GoogleMap(
                        initialCameraPosition: CameraPosition(
                          target: state.initialLatLng,
                          zoom: 0,
                        ),
                        onMapCreated: (controller) {
                          context.read<RideMapBloc>().add(
                                RideMapEvent.mapCreated(
                                  googleMapController: controller,
                                  isDark: themeState.isDark,
                                ),
                              );
                        },
                        onCameraMove: (position) {},
                        onCameraIdle: () {},
                        markers: state.markers,
                        mapType: MapType.normal,
                        myLocationEnabled: true,
                        myLocationButtonEnabled: false,
                        zoomControlsEnabled: false,
                        compassEnabled: false,
                      ),
                      Visibility(
                        visible:
                            state.rideViewStatus == RideViewStatus.trackDriver,
                        child: Positioned(
                          right: 16,
                          top: MediaQuery.of(context).size.height - 520.h,
                          child: GestureDetector(
                            onTap: () {
                              context.pushNamed(Routes.contact);
                            },
                            child: CircleAvatar(
                              radius: 28,
                              backgroundColor: Colors.red,
                              child: CommonText(
                                text: "SOS",
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: FontConstants.font_18,
                              ),
                            ),
                          ),
                        ),
                      ),

                      /// bottom view
                      availableRides(state),
                    ],
                  ),
                );
              },
            );
          },
        ),

        // back icon
        Positioned(
          left: 16.w,
          child: SafeArea(
            child: GestureDetector(
              onTap: () {
                context.pop();
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.fieldBorderColor,
                  ),
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.whiteColor.withOpacity(0.8),
                ),
                child: BlocBuilder<ThemeBloc, ThemeState>(
                  builder: (context, state) {
                    return SvgPicture.asset(
                      ImageConstants.backIcon,
                      height: 16.h,
                      width: 8.w,
                      colorFilter: const ColorFilter.mode(
                        AppColors.blackColor,
                        BlendMode.srcIn,
                      ),
                    );
                  },
                ),
              ),
            ).paddingOnly(top: 6.h),
          ),
        ),
      ],
    );
  }

  Widget availableRides(RideMapState rideMapState) {
    return DraggableScrollableSheet(
      initialChildSize: _getBottomSheetHeight(rideMapState),
      minChildSize: _getBottomSheetHeight(rideMapState),
      maxChildSize: _getBottomSheetHeight(rideMapState),
      builder: (BuildContext context, ScrollController scrollController) {
        return BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, themeState) {
            return Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                color: themeState.themeType == ThemeType.lightTheme
                    ? AppColors.whiteColor
                    : AppColors.darkScaffoldColor,
              ),
              child: rideMapState.rideViewStatus == RideViewStatus.selectRide
                  ? _selectRideView(context, themeState)
                      .paddingSymmetric(horizontal: 16, vertical: 16)
                  : rideMapState.rideViewStatus == RideViewStatus.findDriver
                      ? _findDriverView()
                          .paddingSymmetric(horizontal: 16, vertical: 16)
                      : _trackDriverView(themeState)
                          .paddingSymmetric(horizontal: 16, vertical: 12),
            );
          },
        );
      },
    );
  }

  Widget _selectRideView(BuildContext context, ThemeState themeState) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CommonText(
          fontSize: FontConstants.font_20,
          textAlign: TextAlign.left,
          fontWeight: FontWeightConstants.medium,
          text: context.translate.availableRides,
        ).addDominoEffect(),
        Expanded(
          child: MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: ListView.builder(
              shrinkWrap: true,
              primary: true,
              itemCount: ridesModel.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: themeState.themeType == ThemeType.lightTheme
                        ? AppColors.whiteColor
                        : AppColors.blackColor,
                    border:
                        Border.all(width: 0.5, color: AppColors.lightGreyColor),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 45,
                            width: 45,
                            child: Image.asset(
                              ridesModel[index].image,
                              height: 45,
                              width: 45,
                            ),
                          ).paddingOnly(right: 5),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CommonText(
                                text: ridesModel[index].vehicleType,
                                fontSize: FontConstants.font_16,
                                fontWeight: FontWeight.w500,
                              ),
                              CommonText(
                                text: ridesModel[index].persons,
                                fontSize: FontConstants.font_12,
                                fontWeight: FontWeight.w300,
                                color: AppColors.infoLightGreyColor,
                              ),
                            ],
                          )
                        ],
                      ),
                      CommonText(
                        text: "\$ ${ridesModel[index].price}",
                        fontSize: FontConstants.font_14,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ).paddingAll(10),
                ).addDominoEffect().paddingOnly(bottom: 10);
              },
            ).paddingSymmetric(vertical: 16.h),
          ),
        ),
        CommonFilledButton(
          onPressed: () {
            context.pushNamed(Routes.ridePayment).then(
              (value) {
                if (value == true) {
                  context.read<RideMapBloc>().add(
                        const RideMapEvent.onStatusChanged(
                          rideViewStatus: RideViewStatus.findDriver,
                        ),
                      );
                }
              },
            );
          },
          buttonText: context.translate.bookRide,
        ),
      ],
    );
  }

  Widget _findDriverView() {
    return BlocBuilder<RideMapBloc, RideMapState>(
      builder: (context, state) {
        return SingleChildScrollView(
          primary: false,
          child: Column(
            children: [
              SvgPicture.asset(
                ImageConstants.findDriverImg,
                height: 160.h,
              ).addDominoEffect(),
              TweenAnimationBuilder<double>(
                duration: const Duration(seconds: 10),
                curve: Curves.easeInOut,
                tween: Tween<double>(
                  begin: 0,
                  end: UIConstants.kLinearProgressEndValue,
                ),
                builder: (context, value, child) {
                  if (value == UIConstants.kLinearProgressEndValue) {
                    context.read<RideMapBloc>().add(
                          const RideMapEvent.onStatusChanged(
                            rideViewStatus: RideViewStatus.trackDriver,
                          ),
                        );
                  }
                  return LinearProgressIndicator(
                    value: value,
                    borderRadius: BorderRadius.circular(50),
                    minHeight: 10.h,
                    backgroundColor: AppColors.linearColor,
                  ).addDominoEffect();
                },
              ).paddingSymmetric(vertical: 24.h, horizontal: 4.w),
              CommonText(
                text: context.translate.findDriverMsg,
                textAlign: TextAlign.center,
              ).addDominoEffect(),
              CommonFilledButton(
                onPressed: () {
                  context.pushNamed(Routes.cancelRide);
                  // go to home map screen
                  // context.pop();
                  // context.pop();
                },
                buttonText: context.translate.cancel,
              ).paddingOnly(top: 16.h),
            ],
          ),
        );
      },
    );
  }

  Widget _trackDriverView(ThemeState themeState) {
    return BlocBuilder<RideMapBloc, RideMapState>(
      builder: (context, state) {
        return SingleChildScrollView(
          primary: false,
          child: Column(
            children: [
              CommonText(
                text: context.translate.yourRideIsArrivingIn(3),
                fontWeight: FontWeightConstants.medium,
                fontSize: FontConstants.font_20,
              ).addDominoEffect(),

              /// driver details
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // image
                  ClipOval(
                    child: Image.asset(
                      ImageConstants.profile,
                      fit: BoxFit.cover,
                      width: 55.w,
                      height: 55.h,
                    ),
                  ).addDominoEffect(),

                  //
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // name and star
                        Row(
                          children: [
                            CommonText(
                              text: "Alex Robin",
                              fontFamily: FontFamilyConstants.fontName,
                              fontSize: FontConstants.font_20,
                              fontWeight: FontWeightConstants.medium,
                            ).paddingOnly(right: 8.w),
                            const Icon(
                              Icons.star,
                              color: AppColors.starColor,
                              size: 14,
                            ),
                            CommonText(
                              text: "4",
                              fontWeight: FontWeightConstants.semiBold,
                              color: AppColors.lightGreyColor,
                              fontSize: FontConstants.font_14,
                            ),
                          ],
                        ),

                        // vehicle details
                        Text.rich(
                          TextSpan(
                            text: "Volkswagen - ",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                    fontSize: FontConstants.font_12,
                                    color: AppColors.subExpansionColor),
                            children: [
                              TextSpan(
                                text: "HG5045",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      fontWeight: FontWeightConstants.semiBold,
                                      fontSize: FontConstants.font_12,
                                      color: themeState.themeType ==
                                              ThemeType.lightTheme
                                          ? null // will use color from theme
                                          : AppColors.whiteColor.withOpacity(0.9),
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ).addDominoEffect().paddingOnly(left: 12),
                  ),

                  /// action button
                  const CircleAvatar(
                    backgroundColor: AppColors.primaryColor,
                    child: Icon(
                      Icons.call,
                      size: 24,
                      color: AppColors.whiteColor,
                    ),
                  ).addDominoEffect().paddingOnly(right: 16),

                  GestureDetector(
                    onTap: () {
                      context.pushNamed(Routes.chat);
                    },
                    child: CircleAvatar(
                      backgroundColor: AppColors.primaryColor,
                      child: SvgPicture.asset(
                        IconConstants.chat,
                        width: 22.w,
                        height: 22.h,
                      ),
                    ),
                  ).addDominoEffect(),
                ],
              ).paddingSymmetric(vertical: 16),

              /// address details
              MediaQuery.removePadding(
                context: context,
                removeTop: true,
                removeBottom: true,
                child: Container(
                  constraints: const BoxConstraints(
                    minHeight: 110,
                    minWidth: double.infinity,
                    maxHeight: 110,
                  ),
                  child: CommonWidgets.stepperWithText(
                    themeType: themeState.themeType,
                    addressList: state.addressList,
                    onTap: (value, index) {},
                  ).addDominoEffect(),
                ),
              ),

              /// payment tile
              Material(
                borderRadius: BorderRadius.circular(16),
                elevation: 0,
                borderOnForeground: false,
                color: AppColors.transparentColor,
                child: CommonWidgets.commonSettingTile(
                  title: context.translate.cash,
                  onTap: () {},
                  tileColor: themeState.themeType == ThemeType.lightTheme
                      ? AppColors.containerColor
                      : AppColors.blackColor,
                  leading: SvgPicture.asset(
                    ImageConstants.cash,
                    height: 42.h,
                  ),
                  trailing: Transform.translate(
                    offset: const Offset(16, 0),
                    child: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 16,
                      color: themeState.themeType == ThemeType.lightTheme
                          ? AppColors.blackColor
                          : AppColors.whiteColor,
                    ),
                  ),
                ),
              ).paddingOnly(bottom: 8),

              /// price
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CommonText(
                          text: "\$ 52",
                          color: AppColors.primaryColor,
                          fontSize: FontConstants.font_24,
                          fontWeight: FontWeight.w600,
                        ),
                        CommonText(
                          text: context.translate.price,
                          fontSize: FontConstants.font_14,
                          fontWeight: FontWeight.w500,
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: CommonOutlinedButton(
                      onPressed: () {
                        context.pushNamed(Routes.cancelRide);
                        // go to home map screen
                        // context.pop();
                        // context.pop();
                      },
                      buttonText: context.translate.cancel,
                      borderColor: AppColors.redColor,
                      buttonColor: themeState.themeType == ThemeType.lightTheme
                          ? AppColors.whiteColor
                          : AppColors.darkScaffoldColor,
                      buttonTextColor: AppColors.redColor,
                    ),
                  ),
                ],
              ).addDominoEffect().paddingSymmetric(vertical: 8),
            ],
          ),
        );
      },
    );
  }

  double _getBottomSheetHeight(RideMapState rideMapState) {
    return rideMapState.rideViewStatus == RideViewStatus.selectRide
        ? 0.40
        : rideMapState.rideViewStatus == RideViewStatus.findDriver
            ? 0.42
            : 0.46;
  }
}
