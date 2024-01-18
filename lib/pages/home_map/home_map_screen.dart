import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:taxi_customer_demo/routes/navigation_methods.dart';
import '../../core/common/common_widgets.dart';
import '../../core/common/widgets/common_text.dart';
import '../../core/styles/app_colors.dart';
import 'bloc/home_map_bloc.dart';
import 'component/main_drawer.dart';

import '../../core/common/app_constants/image_constants.dart';
import '../../core/enums/theme_type.dart';
import '../../core/styles/font_constants.dart';
import '../../repository/theme/theme_bloc.dart';

class HomeMapScreen extends StatelessWidget {
  const HomeMapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final AdvancedDrawerController drawerController =
        AdvancedDrawerController();

    // LatLng(37.4219983, -122.084)

    return MainDrawer(
      controller: drawerController,
      child: BlocConsumer<ThemeBloc, ThemeState>(
        listener: (context, state) {
          print("LISTENER  -- ${state.themeType}");

          context.read<HomeMapBloc>().add(
                HomeMapEvent.onMapStyleChanged(
                  isDark: state.themeType == ThemeType.darkTheme,
                ),
              );
        },
        builder: (context, themeState) {
          return BlocConsumer<HomeMapBloc, HomeMapState>(
            listener: (context, state) {},
            builder: (context, state) {
              return Container(
                color: AppColors.transparentColor,
                child: Stack(
                  children: [
                    /// map view
                    GoogleMap(
                      initialCameraPosition: CameraPosition(
                        target: state.currentLatLng,
                        zoom: 0,
                      ),
                      onMapCreated: (controller) {
                        context.read<HomeMapBloc>().add(
                              HomeMapEvent.mapCreated(
                                googleMapController: controller,
                                isDark: themeState.isDark,
                              ),
                            );
                      },
                      onCameraMove: (position) =>
                          context.read<HomeMapBloc>().add(
                                HomeMapEvent.onCameraMove(
                                  position: position,
                                ),
                              ),
                      onCameraIdle: () => context
                          .read<HomeMapBloc>()
                          .add(const HomeMapEvent.onCameraIdle()),
                      markers: state.markers,
                      mapType: MapType.normal,
                      myLocationEnabled: true,
                      myLocationButtonEnabled: false,
                      zoomControlsEnabled: false,
                      /* padding:
                      EdgeInsets.only(top: ScreenUtil().screenHeight - 300),*/
                    ),

                    /// bottom view
                    DraggableScrollableSheet(
                      initialChildSize: 0.20,
                      minChildSize: 0.20,
                      maxChildSize: 0.20,
                      builder: (BuildContext context,
                          ScrollController scrollController) {
                        return SingleChildScrollView(
                          controller: scrollController,
                          physics: const NeverScrollableScrollPhysics(),
                          child: BlocBuilder<ThemeBloc, ThemeState>(
                            builder: (context, themeState) {
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30)),
                                  color: themeState.themeType ==
                                          ThemeType.lightTheme
                                      ? AppColors.whiteColor
                                      : AppColors.darkScaffoldColor,
                                ),
                                child: Container(
                                  margin: const EdgeInsets.all(16),
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CommonText(
                                        fontSize: FontConstants.font_20,
                                        textAlign: TextAlign.left,
                                        fontWeight: FontWeightConstants.medium,
                                        text: "Where do you want to go?",
                                      ),
                                      const SizedBox(
                                        height: 16,
                                      ),
                                      MediaQuery.removePadding(
                                        context: context,
                                        removeTop: true,
                                        child: CommonWidgets.stepperWithText(
                                          themeType: themeState.themeType,
                                          addressList: state.addressList,
                                          onTap: (value, index) {
                                            context.pushNamed(
                                                Routes.selectLocationScreen,
                                                arguments: {
                                                  "address_list":
                                                      state.addressList
                                                });
                                          },
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                      },
                    ),

                    /// current location icon
                    Positioned(
                      right: 16,
                      top: MediaQuery.of(context).size.height - 250.h,
                      child: GestureDetector(
                        onTap: () {
                          context
                              .read<HomeMapBloc>()
                              .add(const HomeMapEvent.onCurrentLocation());
                        },
                        child: CommonWidgets.showContainerImage(
                          icon: ImageConstants.currentLocation,
                          containerColor: AppColors.whiteColor.withOpacity(0.7),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
