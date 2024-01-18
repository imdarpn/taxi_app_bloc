import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'invite_friends_event.dart';

part 'invite_friends_state.dart';

part 'invite_friends_bloc.freezed.dart';

@Injectable()
class InviteFriendsBloc extends Bloc<InviteFriendsEvent, InviteFriendsState> {
  InviteFriendsBloc() : super(const InviteFriendsState.initial()) {
    on<InviteFriendsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
