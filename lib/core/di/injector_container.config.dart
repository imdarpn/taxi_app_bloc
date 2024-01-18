// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:taxi_customer_demo/core/common/app_constants/app_value_constants.dart'
    as _i3;
import 'package:taxi_customer_demo/core/services/api_service/dio_client.dart'
    as _i6;
import 'package:taxi_customer_demo/pages/cancel_ride/bloc/cancel_ride_bloc.dart'
    as _i4;
import 'package:taxi_customer_demo/pages/card_screen/bloc/card_bloc.dart'
    as _i5;
import 'package:taxi_customer_demo/pages/customer_policy/faq/bloc/faq_bloc.dart'
    as _i7;
import 'package:taxi_customer_demo/pages/home_map/bloc/home_map_bloc.dart'
    as _i8;
import 'package:taxi_customer_demo/pages/invite_friends/bloc/invite_friends_bloc.dart'
    as _i9;
import 'package:taxi_customer_demo/pages/location_permission/bloc/bloc/location_permission_bloc.dart'
    as _i13;
import 'package:taxi_customer_demo/pages/login/bloc/login_bloc.dart' as _i14;
import 'package:taxi_customer_demo/pages/my_account/bloc/my_account_bloc.dart'
    as _i15;
import 'package:taxi_customer_demo/pages/notification/bloc/notification_bloc.dart'
    as _i17;
import 'package:taxi_customer_demo/pages/onboarding/bloc/onboarding_bloc.dart'
    as _i18;
import 'package:taxi_customer_demo/pages/otp/bloc/otp_bloc.dart' as _i19;
import 'package:taxi_customer_demo/pages/payment_methods/bloc/payment_methods_bloc.dart'
    as _i20;
import 'package:taxi_customer_demo/pages/rating/bloc/rating_bloc.dart' as _i21;
import 'package:taxi_customer_demo/pages/ride_history/bloc/ride_history_bloc.dart'
    as _i22;
import 'package:taxi_customer_demo/pages/ride_map/bloc/ride_map_bloc.dart'
    as _i23;
import 'package:taxi_customer_demo/pages/ride_payment/bloc/ride_payment_bloc.dart'
    as _i24;
import 'package:taxi_customer_demo/pages/select_location/bloc/select_location_bloc.dart'
    as _i25;
import 'package:taxi_customer_demo/pages/sign_up/bloc/sign_up_bloc.dart'
    as _i26;
import 'package:taxi_customer_demo/pages/splash/bloc/splash_bloc.dart' as _i27;
import 'package:taxi_customer_demo/pages/wallet/bloc/wallet_bloc.dart' as _i29;
import 'package:taxi_customer_demo/repository/auth_repository.dart' as _i30;
import 'package:taxi_customer_demo/repository/local_data/local_data_source.dart'
    as _i10;
import 'package:taxi_customer_demo/repository/local_data/local_data_source_impl.dart'
    as _i11;
import 'package:taxi_customer_demo/repository/localization/localization_bloc.dart'
    as _i12;
import 'package:taxi_customer_demo/repository/network_connectivity/network_connectivity_bloc.dart'
    as _i16;
import 'package:taxi_customer_demo/repository/theme/theme_bloc.dart' as _i28;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.AppValueConstants>(() => _i3.AppValueConstants());
  gh.factory<_i4.CancelRideBloc>(() => _i4.CancelRideBloc());
  gh.factory<_i5.CardBloc>(() => _i5.CardBloc());
  gh.factory<_i6.DioClient>(() => _i6.DioClient());
  gh.factory<_i7.FaqBloc>(() => _i7.FaqBloc());
  gh.factory<_i8.HomeMapBloc>(() => _i8.HomeMapBloc());
  gh.factory<_i9.InviteFriendsBloc>(() => _i9.InviteFriendsBloc());
  gh.lazySingleton<_i10.LocalDataSource>(() => _i11.LocalDataSourceImpl());
  gh.factory<_i12.LocalizationBloc>(
      () => _i12.LocalizationBloc(localDataSource: gh<_i10.LocalDataSource>()));
  gh.factory<_i13.LocationPermissionBloc>(() => _i13.LocationPermissionBloc());
  gh.factory<_i14.LoginBloc>(() => _i14.LoginBloc());
  gh.factory<_i15.MyAccountBloc>(() => _i15.MyAccountBloc());
  gh.factory<_i16.NetworkConnectivityBloc>(
      () => _i16.NetworkConnectivityBloc());
  gh.factory<_i17.NotificationBloc>(() => _i17.NotificationBloc());
  gh.factory<_i18.OnboardingBloc>(() => _i18.OnboardingBloc());
  gh.factory<_i19.OtpBloc>(() => _i19.OtpBloc());
  gh.factory<_i20.PaymentMethodsBloc>(() => _i20.PaymentMethodsBloc());
  gh.factory<_i21.RatingBloc>(() => _i21.RatingBloc());
  gh.factory<_i22.RideHistoryBloc>(() => _i22.RideHistoryBloc());
  gh.factory<_i23.RideMapBloc>(() => _i23.RideMapBloc());
  gh.factory<_i24.RidePaymentBloc>(() => _i24.RidePaymentBloc());
  gh.factory<_i25.SelectLocationBloc>(() => _i25.SelectLocationBloc());
  gh.factory<_i26.SignUpBloc>(() => _i26.SignUpBloc());
  gh.factory<_i27.SplashBloc>(() => _i27.SplashBloc());
  gh.factory<_i28.ThemeBloc>(
      () => _i28.ThemeBloc(localDataSource: gh<_i10.LocalDataSource>()));
  gh.factory<_i29.WalletBloc>(() => _i29.WalletBloc());
  gh.factory<_i30.AuthRepositoryImpl>(
      () => _i30.AuthRepositoryImpl(dioClient: gh<_i6.DioClient>()));
  return getIt;
}
