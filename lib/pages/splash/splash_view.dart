import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taxi_customer_demo/core/common/app_constants/image_constants.dart';
import 'package:taxi_customer_demo/core/common/common_methods.dart';
import 'package:taxi_customer_demo/core/common/widgets/common_scaffold.dart';
import 'package:taxi_customer_demo/core/di/injector_container.dart';
import 'package:taxi_customer_demo/core/services/storage_service/storage_keys.dart';
import 'package:taxi_customer_demo/repository/local_data/local_data_source.dart';
import 'package:taxi_customer_demo/routes/navigation_methods.dart';

import '../../core/enums/loading_status.dart';
import '../../core/enums/theme_type.dart';
import '../../repository/theme/theme_bloc.dart';
import 'bloc/splash_bloc.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, themeState) {
        return BlocConsumer<SplashBloc, SplashState>(
          builder: (context, state) {
            return CommonScaffold(
              showAppBar: true,
              showBackIcon: false,
              body: Center(
                child: Image.asset(
                  themeState.themeType == ThemeType.lightTheme
                      ? ImageConstants.logo
                      : ImageConstants.logoWhite,
                  height: 74.sp,
                  width: 270.sp,
                ),
              ),
            );
          },
          listener: (context, state) async {
            if (state.status == LoadStatus.success) {
              bool isFirstTime = await getIt<LocalDataSource>()
                      .getData(StorageKeys.keyFirstTime) ??
                  true;
              print("isFirstTime: $isFirstTime");
              if (isFirstTime) {
                // go to onboarding
                context.pushReplacementNamed(Routes.onboarding);
              } else {
                // go to login
                bool isLoggedIn = await getIt<LocalDataSource>()
                        .getData(StorageKeys.keyLoggedIn) ??
                    false;

                if (isLoggedIn) {
                  if (await CommonMethods.checkLocationPermissionStatus()) {
                    context.pushReplacementNamed(Routes.homeMap);
                  } else {
                    context.pushReplacementNamed(Routes.locationPermission);
                  }
                } else {
                  context.pushReplacementNamed(Routes.login);
                }
              }
            }
          },
        );
      },
    );
  }
}
