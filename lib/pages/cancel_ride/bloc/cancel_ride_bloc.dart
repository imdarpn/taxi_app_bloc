import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'cancel_ride_event.dart';

part 'cancel_ride_state.dart';

part 'cancel_ride_bloc.freezed.dart';

@Injectable()
class CancelRideBloc extends Bloc<CancelRideEvent, CancelRideState> {
  CancelRideBloc() : super(const CancelRideState.initial()) {
    on<CancelRideEvent>((event, emit) async {
      await event.when(
          started: () {},
          radioChange: (int value) {
            emit(
              state.copyWith(value: value),
            );
          });

      // TODO: implement event handler
    });
  }
}
