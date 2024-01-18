import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_up_event.dart';

part 'sign_up_state.dart';

part 'sign_up_bloc.freezed.dart';

@Injectable()
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc()
      : super(
          SignUpState.initial(
            nameFocusNode: FocusNode(),
            emailFocusNode: FocusNode(),
            phoneNumberFocusNode: FocusNode(),
            nameController: TextEditingController(),
            emailController: TextEditingController(),
            phoneNumberController: TextEditingController(),
          ),
        ) {
    on<SignUpEvent>((event, emit) {

    });
  }
}
