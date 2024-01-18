import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/common/common_methods.dart';
import '../../../core/common/view_models/onboarding_model.dart';
import '../../../core/di/injector_container.dart';
import '../../../core/services/storage_service/storage_keys.dart';
import '../../../repository/local_data/local_data_source.dart';

part 'onboarding_event.dart';

part 'onboarding_state.dart';

part 'onboarding_bloc.freezed.dart';

@Injectable()
class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc() : super(const OnboardingState.initial()) {
    on<OnboardingEvent>(
      (event, emit) async {
        await event.when(
          initOnboardingEvent: () async {
            await getIt<LocalDataSource>()
                .setData(StorageKeys.keyFirstTime, false);

            emit(
              state.copyWith(
                onboardingModelList: CommonMethods.getOnboardingModelList(),
              ),
            );
          },
          pageChangeEvent: (pageIndex) {
            emit(state.copyWith(currentPageIndex: pageIndex));
          },
        );
      },
    );
  }
}
