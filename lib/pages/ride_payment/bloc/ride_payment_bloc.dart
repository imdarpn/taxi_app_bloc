import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'ride_payment_event.dart';
part 'ride_payment_state.dart';
part 'ride_payment_bloc.freezed.dart';

@Injectable()
class RidePaymentBloc extends Bloc<RidePaymentEvent, RidePaymentState> {
  RidePaymentBloc() : super(const RidePaymentState.initial()) {
    on<RidePaymentEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
