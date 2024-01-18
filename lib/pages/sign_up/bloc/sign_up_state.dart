part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.initial({
    required FocusNode nameFocusNode,
    required FocusNode emailFocusNode,
    required FocusNode phoneNumberFocusNode,
    required TextEditingController nameController,
    required TextEditingController emailController,
    required TextEditingController phoneNumberController,
  }) = _Initial;
}
