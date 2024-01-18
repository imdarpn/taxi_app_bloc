import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/enums/loading_status.dart';

part 'splash_event.dart';

part 'splash_state.dart';

part 'splash_bloc.freezed.dart';

@Injectable()
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(const SplashState.initial()) {
    on<SplashEvent>(
      (event, emit) async {
        await event.when(
          started: () async {
            emit(
              state.copyWith(
                status: LoadStatus.loading,
              ),
            );
            await Future.delayed(
              const Duration(seconds: 2),
            ).whenComplete(
                () => emit(state.copyWith(status: LoadStatus.success)));
          },
          ended: () {},
        );
      },
    );
  }
}
