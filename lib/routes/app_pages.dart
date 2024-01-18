import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:taxi_customer_demo/pages/card_screen/bloc/card_bloc.dart';
import 'package:taxi_customer_demo/pages/wallet/bloc/wallet_bloc.dart';
import '../pages/payment_methods/bloc/payment_methods_bloc.dart';
import '../pages/payment_methods/payment_methods_screen.dart';
import '../pages/cancel_ride/bloc/cancel_ride_bloc.dart';
import '../pages/cancel_ride/cancel_ride_screen.dart';
import '../pages/ride_history/ride_history_screen.dart';
import '../pages/notification/bloc/notification_bloc.dart';
import '../pages/notification/notification_screen.dart';
import '../pages/rating/bloc/rating_bloc.dart';
import '../pages/rating/rating_screen.dart';
import '../pages/ride_history/bloc/ride_history_bloc.dart';
import '../pages/sos/chat_screen.dart';
import '../pages/sos/contact_list.dart';
import '../pages/account_screen/account_screen.dart';
import '../pages/account_screen/edit_profile/update_profile.dart';
import '../pages/apply_coupon/apply_coupon_screen.dart';
import '../pages/card_screen/card_screen.dart';
import '../pages/customer_policy/about_us_screen.dart';
import '../pages/customer_policy/customer_policy.dart';
import '../pages/customer_policy/faq/bloc/faq_bloc.dart';
import '../pages/customer_policy/faq/faq_screen.dart';
import '../pages/customer_policy/privacy_policy_screen.dart';
import '../pages/customer_policy/terms_and_condition_screen.dart';
import '../pages/home_map/home_map_screen.dart';
import '../pages/invite_friends/bloc/invite_friends_bloc.dart';
import '../pages/invite_friends/invite_friends_screen.dart';
import '../core/di/injector_container.dart';

import '../pages/login/bloc/login_bloc.dart';
import '../pages/login/login_view.dart';
import '../pages/location_permission/bloc/bloc/location_permission_bloc.dart';
import '../pages/location_permission/location_permission_view.dart';
import '../pages/make_complaint/make_complaint_view.dart';
import '../pages/otp/bloc/otp_bloc.dart';
import '../pages/otp/otp_view.dart';
import '../pages/ride_map/bloc/ride_map_bloc.dart';
import '../pages/ride_map/ride_map_screen.dart';
import '../pages/ride_payment/bloc/ride_payment_bloc.dart';
import '../pages/ride_payment/ride_payment_screen.dart';
import '../pages/select_location/bloc/select_location_bloc.dart';
import '../pages/select_location/select_location.dart';
import '../pages/setting_screen/settings_screen.dart';
import '../pages/sign_up/bloc/sign_up_bloc.dart';
import '../pages/sign_up/sign_up_view.dart';
import '../pages/onboarding/bloc/onboarding_bloc.dart';
import '../pages/onboarding/onboarding_view.dart';
import '../pages/splash/bloc/splash_bloc.dart';
import '../pages/splash/splash_view.dart';
import '../pages/wallet/wallet_screen.dart';

part 'app_routes.dart';

class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    late Map<String, dynamic> arguments;

    if (settings.arguments != null) {
      arguments = settings.arguments as Map<String, dynamic>;
    }

    switch (settings.name) {
      /// splash
      case Routes.splash:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (create) =>
                getIt<SplashBloc>()..add(const SplashEvent.started()),
            child: const SplashView(),
          ),
        );
      case Routes.onboarding:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => BlocProvider(
            create: (create) => getIt<OnboardingBloc>()
              ..add(
                const OnboardingEvent.initOnboardingEvent(),
              ),
            child: const OnboardingView(),
          ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return slideTransition(animation, child);
          },
        );

      case Routes.locationPermission:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => BlocProvider(
            create: (create) => getIt<LocationPermissionBloc>(),
            child: const LocationPermissionView(),
          ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return slideTransition(animation, child);
          },
        );

      case Routes.login:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => BlocProvider(
            create: (create) => getIt<LoginBloc>(),
            child: const LoginView(),
          ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return slideTransition(animation, child);
          },
        );
      case Routes.signUp:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => BlocProvider(
            create: (create) => getIt<SignUpBloc>(),
            child: const SignUpView(),
          ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return slideTransition(animation, child);
          },
        );

      case Routes.otp:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => BlocProvider(
            create: (create) => getIt<OtpBloc>(),
            child: const OtpView(),
          ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return slideTransition(animation, child);
          },
        );

      case Routes.homeMap:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const HomeMapScreen(),
          /*BlocProvider(
            create: (create) =>
                getIt<HomeMapBloc>()..add(const HomeMapEvent.started()),
            child: const HomeMapScreen(),
          ),*/
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return slideTransition(animation, child);
          },
        );

      case Routes.myAccount:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const AccountScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return slideTransition(animation, child);
          },
        );

      case Routes.updateProfile:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const UpdateProfile(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return slideTransition(animation, child);
          },
        );

      case Routes.setting:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const SettingScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return slideTransition(animation, child);
          },
        );

      case Routes.inviteFriends:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => BlocProvider(
            create: (create) => getIt<InviteFriendsBloc>(),
            child: const InviteFriend(),
          ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return slideTransition(animation, child);
          },
        );

      case Routes.selectLocationScreen:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => BlocProvider(
            create: (create) => getIt<SelectLocationBloc>()
              ..add(
                SelectLocationEvent.started(
                  addressList: arguments["address_list"],
                ),
              ),
            child: const SelectLocationScreen(),
          ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return slideTransition(animation, child);
          },
        );

      case Routes.customerPolicy:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const CustomerPolicyScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return slideTransition(animation, child);
          },
        );

      case Routes.privacyPolicy:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const PolicyScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return slideTransition(animation, child);
          },
        );

      case Routes.condition:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const TermsConditionScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return slideTransition(animation, child);
          },
        );

      case Routes.about:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const AboutUsScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return slideTransition(animation, child);
          },
        );

      case Routes.faq:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => BlocProvider(
            create: (create) => getIt<FaqBloc>()..add(const FaqEvent.started()),
            child: const FaqScreen(),
          ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return slideTransition(animation, child);
          },
        );

      case Routes.chat:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const ChatScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return slideTransition(animation, child);
          },
        );

      case Routes.contact:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const ContactScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return slideTransition(animation, child);
          },
        );

      case Routes.ridePayment:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => BlocProvider(
            create: (create) =>
                getIt<RidePaymentBloc>()..add(const RidePaymentEvent.started()),
            child: const RidePayment(),
          ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return slideTransition(animation, child);
          },
        );
      case Routes.applyCouponScreen:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => BlocProvider(
            create: (create) =>
                getIt<RidePaymentBloc>()..add(const RidePaymentEvent.started()),
            child: const ApplyCouponScreen(),
          ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return slideTransition(animation, child);
          },
        );

      case Routes.notification:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => BlocProvider(
            create: (create) => getIt<NotificationBloc>()
              ..add(const NotificationEvent.started()),
            child: const NotificationScreen(),
          ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return slideTransition(animation, child);
          },
        );

      case Routes.rating:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => BlocProvider(
            create: (create) =>
                getIt<RatingBloc>()..add(const RatingEvent.started()),
            child: const RatingScreen(),
          ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return slideTransition(animation, child);
          },
        );

      case Routes.cardScreen:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => BlocProvider(
            create: (create) => getIt<CardBloc>(),
            child: const CardScreen(),
          ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return slideTransition(animation, child);
          },
        );

      case Routes.makeComplaint:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const MakeComplaintView(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return slideTransition(animation, child);
          },
        );

      case Routes.rideMap:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => BlocProvider(
            create: (create) => getIt<RideMapBloc>()
              ..add(RideMapEvent.started(
                addressList: arguments["address_list"],
              )),
            child: const RideMapScreen(),
          ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return slideTransition(animation, child);
          },
        );

      case Routes.rideHistory:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => BlocProvider(
            create: (create) => getIt<RideHistoryBloc>(),
            child: const RideHistoryScreen(),
          ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return slideTransition(animation, child);
          },
        );

      case Routes.paymentMethods:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => BlocProvider(
            create: (create) => getIt<PaymentMethodsBloc>()
              ..add(const PaymentMethodsEvent.started()),
            child: const PaymentMethodsScreen(),
          ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return slideTransition(animation, child, rightToLeft: false);
          },
        );

      case Routes.cancelRide:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => BlocProvider(
            create: (create) => getIt<CancelRideBloc>(),
            child: const CancelRideScreen(),
          ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return slideTransition(
              animation,
              child,
              rightToLeft: false,
            );
          },
        );

      case Routes.wallet:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => BlocProvider(
            create: (create) => getIt<WalletBloc>(),
            child: const WalletScreen(),
          ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return slideTransition(
              animation,
              child,
            );
          },
        );

      /* case Routes.updateProfile:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => const UpdateProfile(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return slideTransition(animation, child);
          },
        );

      case Routes.editCard:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => const EditCard(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return slideTransition(animation, child);
          },
        );*/
      default:
        return null;
    }
  }
}

SlideTransition slideTransition(
  Animation<double> animation,
  Widget child, {
  bool rightToLeft = true,
}) {
  Offset begin = rightToLeft ? const Offset(1.0, 0.0) : const Offset(0.0, 1.0);
  const Offset end = Offset.zero;
  const Cubic curve = Curves.ease;

  var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

  return SlideTransition(
    position: animation.drive(tween),
    child: child,
  );
}
