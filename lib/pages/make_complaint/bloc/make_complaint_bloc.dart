import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'make_complaint_event.dart';
part 'make_complaint_state.dart';
part 'make_complaint_bloc.freezed.dart';

class MakeComplaintBloc extends Bloc<MakeComplaintEvent, MakeComplaintState> {
  MakeComplaintBloc() : super(const MakeComplaintState.initial()) {
    on<MakeComplaintEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
