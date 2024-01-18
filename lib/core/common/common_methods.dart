import 'dart:convert';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:taxi_customer_demo/core/common/view_models/faq_model.dart';
import 'package:taxi_customer_demo/core/common/view_models/notification_model.dart';
import 'package:taxi_customer_demo/core/common/widgets/common_outlined_button.dart';
import 'package:taxi_customer_demo/core/common/widgets/common_text.dart';
import 'package:taxi_customer_demo/routes/navigation_methods.dart';
import 'package:taxi_customer_demo/utils/extensions.dart';
import '../../repository/localization/localization_bloc.dart';
import '../../repository/theme/theme_bloc.dart';
import '../styles/font_constants.dart';
import 'app_constants/image_constants.dart';
import 'view_models/drawer_item_model.dart';
import 'package:taxi_customer_demo/l10n/localization.dart';
import 'package:taxi_customer_demo/routes/app_pages.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../utils/logger_util.dart';
import 'app_constants/app_value_constants.dart';
import 'common_widgets.dart';
import 'view_models/onboarding_model.dart';
import 'view_models/payment_method_model.dart';

class CommonMethods {
  static String emailRegExp =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  static String nameRegExp = r'^.{2,70}$';

  hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static Future<bool> checkConnectivity() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      return false;
    } else {
      return true;
    }
  }

  static String getPlatformDevice() {
    String platform = "";
    if (Platform.isAndroid) {
      platform = "";
    } else if (Platform.isIOS) {
      platform = "";
    }

    return platform;
  }

  static Future<String> getPlatformVersion() async {
    String version = "1.0.0";
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    version = Platform.isAndroid ? packageInfo.version : packageInfo.version;
    return version;
  }

  static Future<String> getDeviceInfo() async {
    String appDevice = "";
    if (Platform.isAndroid) {
      AndroidDeviceInfo androidDeviceInfo =
          await DeviceInfoPlugin().androidInfo;
      appDevice = androidDeviceInfo.model;
      logger.e("DEVICE INFO --$androidDeviceInfo");
    } else if (Platform.isIOS) {
      IosDeviceInfo iosDeviceInfo = await DeviceInfoPlugin().iosInfo;
      appDevice = iosDeviceInfo.name;
    }

    return appDevice;
  }

  static Future<int> getAndroidVersion() async {
    if (Platform.isAndroid) {
      AndroidDeviceInfo androidDeviceInfo =
          await DeviceInfoPlugin().androidInfo;
      logger.log(
        "androidDeviceInfo.version.sdkInt: ${androidDeviceInfo.version.sdkInt}",
      );
      return androidDeviceInfo.version.sdkInt;
    } else {
      return 0;
    }
  }

  static String getBase64FromFile(String fileName) {
    final bytes = File(fileName).readAsBytesSync();

    String img64 = base64Encode(bytes);
    return img64;
  }

  static String getConvertedDate(
      {String? inputDateFormat, String? outputDateFormat, String? date}) {
    if (date == null || date.isEmpty) {
      return "";
    }
    try {
      var dateFormat = DateFormat(outputDateFormat)
          .format(DateFormat(inputDateFormat).parse(date));
      return dateFormat;
    } catch (exception) {
      return "";
    }
  }

  static String durationToString(int duration) {
    final int hour = duration ~/ 60;
    final int minutes = duration % 60;
    if (hour > 0) {
      return '${hour.toString()}h ${minutes.toString()}m';
    } else {
      return '${minutes.toString()}m';
    }
  }

  static Future<void> openLink({
    String urlPath = "",
    String urlScheme = "",
  }) async {
    Uri url;
    if (urlScheme != "") {
      url = Uri(scheme: urlScheme, path: urlPath);
    } else {
      if (urlPath.startsWith("http")) {
        url = Uri.parse(urlPath);
      } else {
        url = Uri.https(urlPath);
      }
    }

    try {
      if (await canLaunchUrl(url)) {
        await launchUrl(
          url,
          mode: LaunchMode.externalApplication,
        );
      } else {
        // todo: handle when can't open url
      }
    } catch (e) {
      logger.e("ERROR open link: $e");
    }
  }

  static Future<bool> askPermission({
    Permission? permission,
    String? whichPermission,
  }) async {
    bool isPermissionGranted = await permission!.isGranted;
    var shouldShowRequestRationale =
        await permission.shouldShowRequestRationale;

    if (isPermissionGranted) {
      return true;
    } else {
      if (!shouldShowRequestRationale) {
        var permissionStatus = await permission.request();
        logger.e("STATUS == $permissionStatus");
        if (permissionStatus.isPermanentlyDenied) {
          // todo: show dialog of open setting
          return false;
        }
        if (permissionStatus.isGranted || permissionStatus.isLimited) {
          return true;
        } else {
          return false;
        }
      } else {
        var permissionStatus = await permission.request();
        if (permissionStatus.isGranted || permissionStatus.isLimited) {
          return true;
        } else {
          return false;
        }
      }
    }
  }

  static Future<bool> checkLocationPermissionStatus() async {
    LocationPermission permission = await Geolocator.checkPermission();
    bool isPermissionGranted = permission == LocationPermission.always ||
        permission == LocationPermission.whileInUse;
    return isPermissionGranted;
  }

  static Future<bool> askLocationPermission({
    String? whichPermission,
    BuildContext? context,
  }) async {
    bool isPermissionGranted = await checkLocationPermissionStatus();

    if (isPermissionGranted) {
      return true;
    } else {
      LocationPermission permissionStatus =
          await Geolocator.requestPermission();
      logger.e("STATUS == $permissionStatus");
      if (permissionStatus == LocationPermission.deniedForever) {
        CommonWidgets.showCustomDialog(
            context,
            context!.translate.permission,
            "${context.translate.pleaseAllowThe} $whichPermission ${context.translate.permissionFromSettings}",
            context.translate.cancel,
            context.translate.settings, (value) {
          /// OPEN SETTING CODE
          if (value == 1) {
            openAppSettings();
          }
        });
        return false;
      }
      if (permissionStatus == LocationPermission.always ||
          permissionStatus == LocationPermission.whileInUse) {
        return true;
      } else {
        return false;
      }
    }
  }

  static Future<void> getCurrentAddress() async {
    try {
      Position loc = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      List<Placemark> placemarks =
          await placemarkFromCoordinates(loc.latitude, loc.longitude);

      AppValueConstants.currentLatitude.value = loc.latitude;
      AppValueConstants.currentLongitude.value = loc.longitude;

      AppValueConstants.currentLatLng.value =
          LatLng(loc.latitude, loc.longitude);

      if (placemarks[0].subLocality == "" || placemarks[0].locality == "") {
        AppValueConstants.displayAddress.value = placemarks[0].name!;
      } else {
        AppValueConstants.displayAddress.value =
            "${placemarks[0].subLocality}, ${placemarks[0].locality}";
      }
    } catch (e) {
      logger.e("EXCEPTION ===${e.toString()}");
    }
  }

  static Future<bool> getCurrentLocation(BuildContext context) async {
    if (!await Geolocator.isLocationServiceEnabled()) {
      openAppSettings();
      return false;
    }

    bool isPermissionGranted = await askLocationPermission(
      whichPermission: "Location",
      context: context,
    );
    logger.i("LOCATION PERMISSION: $isPermissionGranted}");
    return isPermissionGranted;
  }

  static Future<Permission?> getGalleryPermission() async {
    if (Platform.isAndroid && await CommonMethods.getAndroidVersion() < 33) {
      return Permission.storage;
    } else {
      return Permission.photos;
    }
  }

  static Future<bool> imageSize(XFile file) async {
    final bytes = (await file.readAsBytes()).lengthInBytes;
    final kb = bytes / 1024;
    final mb = kb / 1024;

    logger.e("IMAGE SIZE ----$mb");

    if (mb <= 15) {
      return true;
    } else {
      return false;
    }
  }

  /// date format
  static String getFormattedDate({
    DateTime? date,
    String dateFormat = "d MMM y", //
  }) {
    if (date == null) {
      return "";
    } else {
      return DateFormat(dateFormat).format(date);
    }
  }

  /// get country flag
  static String getCountryFlag({
    required String countryCode,
  }) {
    return "assets/flags/${countryCode.toLowerCase()}.png";
  }

  static List<OnboardingModel> getOnboardingModelList() {
    List<OnboardingModel> onboardingModelList = [];

    onboardingModelList.addAll(
      [
        OnboardingModel(
          titleText:
              AppValueConstants.globalKey.currentContext!.translate.acceptAJob,
          subText: AppValueConstants
              .globalKey.currentContext!.translate.subTextOnboarding,
          imagePath: ImageConstants.onboarding_1,
        ),
        OnboardingModel(
          titleText: AppValueConstants
              .globalKey.currentContext!.translate.trackingRealtime,
          subText: AppValueConstants
              .globalKey.currentContext!.translate.subTextOnboarding,
          imagePath: ImageConstants.onboarding_2,
        ),
        OnboardingModel(
          titleText:
              AppValueConstants.globalKey.currentContext!.translate.earnMoney,
          subText: AppValueConstants
              .globalKey.currentContext!.translate.subTextOnboarding,
          imagePath: ImageConstants.onboarding_3,
        ),
      ],
    );

    return onboardingModelList;
  }

  static List<DrawerItemModel> getDrawerItemsModelList() {
    List<DrawerItemModel> drawerItemModelList = [];

    drawerItemModelList.addAll(
      [
        DrawerItemModel(
          title: AppValueConstants.globalKey.currentContext!.translate.myAcc,
          path: Routes.myAccount,
        ),
        DrawerItemModel(
          title:
              AppValueConstants.globalKey.currentContext!.translate.inviteFrd,
          path: Routes.inviteFriends,
        ),
        DrawerItemModel(
          title: AppValueConstants
              .globalKey.currentContext!.translate.customerPolicy,
          path: Routes.customerPolicy,
        ),
        DrawerItemModel(
          title: AppValueConstants.globalKey.currentContext!.translate.sos,
          path: Routes.contact,
        ),
        DrawerItemModel(
          title: AppValueConstants.globalKey.currentContext!.translate.makeComp,
          path: Routes.makeComplaint,
        ),
        DrawerItemModel(
          title: AppValueConstants
              .globalKey.currentContext!.translate.notification,
          path: Routes.notification,
        ),
        DrawerItemModel(
          title: AppValueConstants.globalKey.currentContext!.translate.settings,
          path: Routes.setting,
        ),
        // DrawerItemModel( /// IN POLICY
        //   title: AppValueConstants.globalKey.currentContext!.translate.about,
        //   path: Routes.myAccount,
        // ),
        // DrawerItemModel(
        //   title: AppValueConstants.globalKey.currentContext!.translate.policy,
        //   path: Routes.myAccount,
        // ),
        // DrawerItemModel(
        //   title: AppValueConstants.globalKey.currentContext!.translate.terms,
        //   path: Routes.myAccount,
        // ),
        /*DrawerItemModel(
          title: AppValueConstants.globalKey.currentContext!.translate.logOut,
          path: Routes.myAccount,
        ),*/
      ],
    );
    return drawerItemModelList;
  }

  static List<FaqModel> getFaqModelList() {
    List<FaqModel> faqModelList = [];

    faqModelList.addAll(
      List.generate(
        5,
        (index) => FaqModel(
          id: index,
          question: "$index Lorem Ipsum is simply dummy text?",
          answer:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever.",
        ),
      ),
    );
    return faqModelList;
  }

  static List<NotificationModel> getNotificationModelList() {
    List<NotificationModel> notificationList = [];

    notificationList.addAll(
      List.generate(
        4,
        (index) => NotificationModel(
          title: index % 2 == 0 ? "System" : "Promotion",
          message: index % 2 == 0
              ? "Your booking #5445 has been succu..."
              : "Invite friends - Get 3 coupons each!",
          isSeen: index == 3 ? true : false,
        ),
      ),
    );

    return notificationList;
  }

  static List<PaymentMethodModel> getPaymentMethodModelList() {
    List<PaymentMethodModel> paymentMethodList = [];

    paymentMethodList.addAll(
      [
        // cash
        PaymentMethodModel(
          paymentMethodTitle:
              AppValueConstants.globalKey.currentContext!.translate.cash,
          paymentTypeList: [
            PaymentType(
              paymentTileName:
                  AppValueConstants.globalKey.currentContext!.translate.cash,
              paymentTypeImage: ImageConstants.cash,
              isSelected: true,
            ),
          ],
        ),

        //  wallet
        PaymentMethodModel(
          paymentMethodTitle:
              AppValueConstants.globalKey.currentContext!.translate.wallet,
          paymentTypeList: [
            PaymentType(
              paymentTileName:
                  AppValueConstants.globalKey.currentContext!.translate.wallet,
              paymentTypeImage: ImageConstants.wallet,
            ),
          ],
        ),

        // card
        PaymentMethodModel(
          paymentMethodTitle: AppValueConstants
              .globalKey.currentContext!.translate.creditAndDebitCard,
          paymentTypeList: [
            PaymentType(
              paymentTileName:
                  AppValueConstants.globalKey.currentContext!.translate.addCard,
              paymentTypeImage: ImageConstants.cardIcon,
              isReadOnly: true,
            ),
          ],
        ),
      ],
    );

    return paymentMethodList;
  }

  static bool isDark() {
    return SchedulerBinding.instance.platformDispatcher.platformBrightness ==
            Brightness.dark
        ? true
        : false;
  }

  static Future<String> getMapStyle(bool isDark) async {
    return isDark
        ? await rootBundle.loadString('assets/map/night.json')
        : await rootBundle.loadString('assets/map/light.json');
  }

  static showLanguagePanel({required BuildContext context}) {
    context.read<LocalizationBloc>().add(const LocalizationEvent.getLocale());
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      context: context,
      builder: (BuildContext context) {
        return BlocBuilder<LocalizationBloc, LocalizationState>(
          builder: (context, state) {
            return Wrap(
              children: [
                SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(Icons.arrow_back_ios)),
                            const Spacer(
                              flex: 1,
                            ),
                            CommonText(
                              text: "Select Language",
                              fontFamily: FontFamilyConstants.fontName,
                              fontWeight: FontWeight.w600,
                              fontSize: FontConstants.font_22,
                            ),
                            const Spacer(
                              flex: 2,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                                value: "en-US",
                                groupValue: state.langCode,
                                onChanged: (String? value) {
                                  context.read<LocalizationBloc>().add(
                                      LocalizationEvent.radioChange(
                                          value: value!));
                                }),
                            CommonText(
                              text: context.translate.english,
                              fontFamily: FontFamilyConstants.fontName,
                              fontWeight: FontWeight.w500,
                              fontSize: FontConstants.font_18,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                                value: "es-ES",
                                groupValue: state.langCode,
                                onChanged: (String? value) {
                                  context.read<LocalizationBloc>().add(
                                      LocalizationEvent.radioChange(
                                          value: value!));
                                }),
                            CommonText(
                              text: context.translate.spanish,
                              fontFamily: FontFamilyConstants.fontName,
                              fontWeight: FontWeight.w500,
                              fontSize: FontConstants.font_18,
                            )
                          ],
                        ),
                        CommonOutlinedButton(
                          allowAnimation: false,
                          onPressed: () {
                            context
                                .read<LocalizationBloc>()
                                .add(const LocalizationEvent.changeLocale());
                            Navigator.pop(context);
                          },
                          borderRadius: 32,
                          buttonText: context.translate.changeLanguage,
                        ).paddingSymmetric(vertical: 32.h, horizontal: 16.w),
                      ],
                    ))
              ],
            );
          },
        );
      },
    );
  }

  static void showThemePanel({required BuildContext context}) {
    context.read<ThemeBloc>().add(const ThemeEvent.started());
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      context: context,
      builder: (BuildContext context) {
        return BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, state) {
            return Wrap(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(Icons.arrow_back_ios)),
                          const Spacer(
                            flex: 1,
                          ),
                          CommonText(
                            text: "Select Theme",
                            fontFamily: FontFamilyConstants.fontName,
                            fontWeight: FontWeight.w600,
                            fontSize: FontConstants.font_22,
                          ),
                          const Spacer(
                            flex: 2,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                              value: 1,
                              groupValue: state.group,
                              onChanged: (int? value) {
                                context
                                    .read<ThemeBloc>()
                                    .add(ThemeEvent.radioChange(index: value!));
                              }),
                          CommonText(
                            text: context.translate.lightTheme,
                            fontFamily: FontFamilyConstants.fontName,
                            fontWeight: FontWeight.w500,
                            fontSize: FontConstants.font_18,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                              value: 2,
                              groupValue: state.group,
                              onChanged: (int? value) {
                                context
                                    .read<ThemeBloc>()
                                    .add(ThemeEvent.radioChange(index: value!));
                              }),
                          CommonText(
                            text: context.translate.darkTheme,
                            fontFamily: FontFamilyConstants.fontName,
                            fontWeight: FontWeight.w500,
                            fontSize: FontConstants.font_18,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                              value: 3,
                              groupValue: state.group,
                              onChanged: (int? value) {
                                context
                                    .read<ThemeBloc>()
                                    .add(ThemeEvent.radioChange(index: value!));
                              }),
                          CommonText(
                            text: context.translate.defaultTheme,
                            fontFamily: FontFamilyConstants.fontName,
                            fontWeight: FontWeight.w500,
                            fontSize: FontConstants.font_18,
                          )
                        ],
                      ),
                      CommonOutlinedButton(
                        allowAnimation: false,
                        onPressed: () {
                          context
                              .read<ThemeBloc>()
                              .add(const ThemeEvent.themeChange());
                          Navigator.pop(context);
                        },
                        borderRadius: 32,
                        buttonText: context.translate.changeTheme,
                      ).paddingSymmetric(vertical: 32.h, horizontal: 16.w),
                    ],
                  ),
                )
              ],
            );
          },
        );
      },
    );
  }

  /// animate camera
  static void animateCameraToLocation({
    required GoogleMapController mapController,
    required LatLng targetLocation,
  }) {
    mapController.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: targetLocation,
          zoom: 15,
        ),
      ),
    );
  }
}
