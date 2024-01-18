part of 'notification_bloc.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState.initial(
      {@Default([]) List<NotificationModel> notificationList}) = _Initial;
}
