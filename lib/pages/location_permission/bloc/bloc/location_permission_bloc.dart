import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'location_permission_event.dart';
part 'location_permission_state.dart';
part 'location_permission_bloc.freezed.dart';

@Injectable()
class LocationPermissionBloc extends Bloc<LocationPermissionEvent, LocationPermissionState> {
  LocationPermissionBloc() : super(const LocationPermissionState.initial()) {
    on<LocationPermissionEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
