import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'my_account_event.dart';

part 'my_account_state.dart';

part 'my_account_bloc.freezed.dart';

@Injectable()
class MyAccountBloc extends Bloc<MyAccountEvent, MyAccountState> {
  MyAccountBloc() : super(const MyAccountState.initial()) {
    on<MyAccountEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
