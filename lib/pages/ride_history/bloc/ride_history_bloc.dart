import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'ride_history_event.dart';
part 'ride_history_state.dart';
part 'ride_history_bloc.freezed.dart';

@Injectable()
class RideHistoryBloc extends Bloc<RideHistoryEvent, RideHistoryState> {
  RideHistoryBloc() : super(const RideHistoryState.initial()) {
    on<RideHistoryEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
