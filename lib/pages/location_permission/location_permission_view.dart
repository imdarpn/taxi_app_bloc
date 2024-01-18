import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../core/common/common_methods.dart';
import 'package:taxi_customer_demo/l10n/localization.dart';
import '../../routes/navigation_methods.dart';
import '../../core/common/app_constants/image_constants.dart';
import '../../core/common/widgets/widgets.dart';
import '../../core/styles/font_constants.dart';
import 'package:taxi_customer_demo/utils/extensions.dart';

class LocationPermissionView extends StatelessWidget {
  const LocationPermissionView({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      showAppBar: false,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 42.h,
            ),
            SvgPicture.asset(
              ImageConstants.locationImage,
            ),
            CommonText(
              text: context.translate.locationPermissionText,
              fontSize: FontConstants.font_20,
              fontWeight: FontWeightConstants.medium,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
      bottomNavigationBar: CommonFilledButton(
        onPressed: () async {
          bool checkPermission = await CommonMethods.getCurrentLocation(context);
          if (checkPermission) {
            context.pushReplacementNamed(Routes.homeMap);
          }
          print("checkPermission $checkPermission");
        },
        buttonText: context.translate.allowLocation,
      ).paddingSymmetric(horizontal: 32.w, vertical: 16.h),
    );
  }
}
