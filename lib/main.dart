import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';
import 'package:taxi_customer_demo/core/common/common_widgets.dart';
import 'package:taxi_customer_demo/firebase_options.dart';
import 'package:taxi_customer_demo/pages/home_map/bloc/home_map_bloc.dart';
import 'package:taxi_customer_demo/repository/network_connectivity/network_connectivity_bloc.dart';
import 'package:taxi_customer_demo/routes/navigation_methods.dart';
import 'core/common/app_constants/app_value_constants.dart';
import 'core/styles/ui_constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'core/di/injector_container.dart';
import 'core/enums/theme_type.dart';
import 'core/styles/app_theme.dart';
import 'firebase_options.dart';
import 'repository/localization/localization_bloc.dart';
import 'repository/theme/theme_bloc.dart';
import 'repository/theme/theme_listener.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // Firebase.initializeApp().whenComplete(() {
  //   print("completed");
  //  });
  await initializeDependencies();
  await GetStorage.init();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<NetworkConnectivityBloc>()
            ..add(
              const NetworkConnectivityEvent.started(),
            ),
        ),
        BlocProvider(
          create: (context) =>
              getIt<ThemeBloc>()..add(const ThemeEvent.started()),
        ),
        BlocProvider(
          create: (context) => getIt<LocalizationBloc>()
            ..add(const LocalizationEvent.getLocale()),
        ),
        BlocProvider(
          create: (context) =>
              getIt<HomeMapBloc>()..add(const HomeMapEvent.started()),
        ),
      ],
      child: const MyApp(),
    ),
  );
  Bloc.observer = AppBlocObserver();
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with ThemeListener {
  @override
  void initState() {
    init();
    stream.listen(
      (event) {
        context
            .read<ThemeBloc>()
            .add(ThemeEvent.themeListener(brightness: event));
      },
    );

    super.initState();
  }

  @override
  dispose() {
    dispose();
    return super.dispose();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    /// set orientation
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ],
    );

    return BlocBuilder<NetworkConnectivityBloc, NetworkConnectivityState>(
      builder: (context, state) {
        return BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, themeState) {
            SystemChrome.setSystemUIOverlayStyle(
              themeState.themeType == ThemeType.lightTheme
                  ? SystemUiOverlayStyle.dark
                  : SystemUiOverlayStyle.light,
            );

            return BlocBuilder<LocalizationBloc, LocalizationState>(
              builder: (context, localizationState) {
                return ScreenUtilInit(
                  designSize: const Size(
                    UIConstants.kDesignWidth,
                    UIConstants.kDesignHeight,
                  ),
                  minTextAdapt: true,
                  splitScreenMode: true,
                  ensureScreenSize: true,
                  child: MaterialApp(
                    navigatorKey: AppValueConstants.globalKey,
                    debugShowCheckedModeBanner: false,
                    title: 'Taxi Customer Demo',
                    theme: AppTheme.getAppTheme(context, themeState.themeType),
                    locale: localizationState.locale,
                    localizationsDelegates:
                        AppLocalizations.localizationsDelegates,
                    supportedLocales: AppLocalizations.supportedLocales,
                    initialRoute: Routes.splash,
                    onGenerateRoute: AppRouter.onGenerateRoute,
                    builder: (context, child) {
                      return Overlay(
                        initialEntries: [
                          OverlayEntry(
                            builder: (context) => child!,
                          ),
                        ],
                      );
                    },
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}

class AppBlocObserver extends BlocObserver {
  bool isCheckInternet = true;

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);

    if (isCheckInternet) {
      if (change.nextState is NetworkDisconnected) {
        print("INTERNET LOST");

        CommonWidgets.noInternetDialog(
          context: AppValueConstants.globalKey.currentContext!,
        );
      }

      if (change.currentState is NetworkDisconnected &&
          change.nextState is NetworkConnected) {
        AppValueConstants.globalKey.currentContext!.pop();
      }
    }

    log('onChange: ${bloc.runtimeType}, ${bloc.state} \nCurrent state: ${change.currentState}\nNext state: ${change.nextState}');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, ${bloc.state}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    log('onEvent(${bloc.state}, ${bloc.runtimeType}, $event)');
    super.onEvent(bloc, event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    log('onTransition(${bloc.state}, ${bloc.runtimeType}, ${transition.currentState}, ${transition.nextState})');
    super.onTransition(bloc, transition);
  }
}
