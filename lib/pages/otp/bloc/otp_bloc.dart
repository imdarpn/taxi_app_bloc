import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'otp_event.dart';
part 'otp_state.dart';
part 'otp_bloc.freezed.dart';

@Injectable()
class OtpBloc extends Bloc<OtpEvent, OtpState> {
  OtpBloc() : super(const OtpState.initial()) {
    on<OtpEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
