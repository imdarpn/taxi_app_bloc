import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:taxi_customer_demo/core/common/common_methods.dart';

import '../../../core/common/view_models/notification_model.dart';

part 'notification_event.dart';

part 'notification_state.dart';

part 'notification_bloc.freezed.dart';

@Injectable()
class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  NotificationBloc() : super(const NotificationState.initial()) {
    on<NotificationEvent>(
      (event, emit) {
        event.when(
          started: () {
            emit(
              state.copyWith(
                notificationList: CommonMethods.getNotificationModelList(),
              ),
            );
          },
        );
      },
    );
  }
}
