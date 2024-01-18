import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taxi_customer_demo/core/common/common_widgets.dart';
import 'package:taxi_customer_demo/core/common/view_models/favorite_address_model.dart';
import 'package:taxi_customer_demo/core/enums/address_type.dart';
import 'package:taxi_customer_demo/core/enums/theme_type.dart';
import 'package:taxi_customer_demo/core/styles/app_colors.dart';
import 'package:taxi_customer_demo/pages/select_location/bloc/select_location_bloc.dart';
import 'package:taxi_customer_demo/routes/navigation_methods.dart';
import 'package:taxi_customer_demo/utils/extensions.dart';

import '../../core/common/app_constants/image_constants.dart';
import '../../core/common/app_constants/string_constants.dart';
import '../../core/common/widgets/common_scaffold.dart';
import '../../core/common/widgets/common_text.dart';
import '../../core/styles/font_constants.dart';
import '../../repository/theme/theme_bloc.dart';

class SelectLocationScreen extends StatefulWidget {
  const SelectLocationScreen({super.key});

  @override
  State<SelectLocationScreen> createState() => _SelectLocationScreenState();
}

class _SelectLocationScreenState extends State<SelectLocationScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      showAppBar: true,
      body: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, themeState) {
          return BlocConsumer<SelectLocationBloc, SelectLocationState>(
            listener: (context, state) {},
            builder: (context, state) {
              return Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: AppColors.subTextColor.withOpacity(0.2),
                          offset: const Offset(0, 10),
                          blurRadius: 15,
                          blurStyle: BlurStyle.normal,
                        ),
                      ],
                      color: themeState.themeType == ThemeType.lightTheme
                          ? AppColors.scaffoldColor
                          : AppColors.darkScaffoldColor,
                    ),
                    constraints: const BoxConstraints(
                      minHeight: 100,
                      minWidth: double.infinity,
                      maxHeight: 250,
                    ),
                    child: MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      removeBottom: true,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            flex: state.addressModelList.length > 2 ? 1 : 0,
                            child: CommonWidgets.stepperWithTextField(
                              context: context,
                              themeType: themeState.themeType,
                              addressModelList: state.addressModelList,
                              onTapAdd: (value, index) {
                                if (value == 1) {
                                  context.read<SelectLocationBloc>().add(
                                      const SelectLocationEvent.addField());
                                }
                              },
                              onTapClose: (value, index) {
                                if (value == 1) {
                                  context.read<SelectLocationBloc>().add(
                                      SelectLocationEvent.removeField(
                                          index: index));
                                }
                              },
                            ),
                          ),
                          CommonText(
                            text: StringConstants.addMultipleStops,
                            fontSize: FontConstants.font_12,
                            color: AppColors.infoLightGreyColor,
                          ).paddingOnly(left: 16, bottom: 24)
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        _favoriteAddressList(state),

                        ListView.builder(
                            itemCount: addressList.length, //list.length
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Row(
                                children: [
                                  Container(
                                    height: 8,
                                    width: 8,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: themeState.themeType ==
                                              ThemeType.lightTheme
                                          ? AppColors.blackColor
                                          : AppColors.whiteColor,
                                    ),
                                  ),
                                  CommonText(
                                    text: addressList[index],
                                    fontSize: FontConstants.font_12,
                                  ).paddingOnly(left: 15),
                                ],
                              ).addDominoEffect().paddingOnly(top: 20);
                            }).paddingOnly(left: 16)
                      ],
                    ).paddingOnly(left: 4, right: 16, top: 8),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }

  Widget _favoriteAddressList(SelectLocationState selectLocationState) {
    List<FavoriteAddressModel> favoriteAddressModelList = [
      FavoriteAddressModel(
        addressType: AddressType.Home,
        address: "250 west, industrial area",
      ),
      FavoriteAddressModel(
        addressType: AddressType.Work,
        address: "4 number gali pratap nagar",
      ),
    ];

    return ListView.builder(
      shrinkWrap: true,
      itemCount: favoriteAddressModelList.length,
      itemBuilder: (context, index) {
        return InkWell(
          highlightColor: AppColors.transparentColor,
          splashColor: AppColors.transparentColor,
          onTap: () {
            context.pushNamed(Routes.rideMap, arguments: {"address_list": selectLocationState.addressModelList});
          },
          child: Row(
            children: [
              CommonWidgets.commonSquareIcon(
                icon: ImageConstants.likeIcon,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonText(
                    text: favoriteAddressModelList[index].addressType.name,
                    fontSize: FontConstants.font_14,
                  ),
                  CommonText(
                    text: favoriteAddressModelList[index].address,
                    fontSize: FontConstants.font_12,
                    color: AppColors.lightGreyColor,
                  )
                ],
              ).paddingOnly(left: 5)
            ],
          ),
        ).addDominoEffect();
      },
    );
  }
}
