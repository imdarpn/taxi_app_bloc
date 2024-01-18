import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'card_event.dart';

part 'card_state.dart';

part 'card_bloc.freezed.dart';

@Injectable()
class CardBloc extends Bloc<CardEvent, CardState> {
  CardBloc() : super(const CardState.initial()) {
    on<CardEvent>(
      (event, emit) {
        event.when(
          started: () {},
          onCreditCardChanged: (creditCardModel) {
            emit(
              state.copyWith(
                cardNumber: creditCardModel.cardNumber,
                expiryDate: creditCardModel.expiryDate,
                cardHolderName: creditCardModel.cardHolderName,
                cvvCode: creditCardModel.cvvCode,
                isCvvFocused: creditCardModel.isCvvFocused,
              ),
            );
          },
          onValidateCard: (formKey) {
            if (formKey.currentState?.validate() ?? false) {
              print('valid!');
            } else {
              print('invalid!');
            }
          },
        );
      },
    );
  }
}
