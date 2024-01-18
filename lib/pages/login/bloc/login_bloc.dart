import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:intl_phone_field/countries.dart';

part 'login_event.dart';

part 'login_state.dart';

part 'login_bloc.freezed.dart';

@Injectable()
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc()
      : super(LoginState.initial(
          country: countries.firstWhere((item) => item.code == ("US"),
              orElse: () => countries.first),
        )) {
    on<LoginEvent>(
      (event, emit) {
        event.when(
          started: () {},
          onCountryChanged: (country) {
            emit(state.copyWith(country: country));
          },
        );
      },
    );
  }
}
