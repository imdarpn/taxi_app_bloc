import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../core/common/common_methods.dart';
import '../../../core/common/view_models/payment_method_model.dart';

part 'payment_methods_event.dart';

part 'payment_methods_state.dart';

part 'payment_methods_bloc.freezed.dart';

@Injectable()
class PaymentMethodsBloc
    extends Bloc<PaymentMethodsEvent, PaymentMethodsState> {
  PaymentMethodsBloc() : super(const PaymentMethodsState.initial()) {
    on<PaymentMethodsEvent>(
      (event, emit) {
        event.when(
          started: () {
            emit(
              state.copyWith(
                paymentMethodList: CommonMethods.getPaymentMethodModelList(),
              ),
            );
          },
          onTapPaymentType: (paymentType) {
            List<PaymentMethodModel> paymentMethodList =
                state.paymentMethodList.toList();

            paymentMethodList = paymentMethodList.map(
              (PaymentMethodModel paymentMethodModel) {
                List<PaymentType> typeList =
                    paymentMethodModel.paymentTypeList.map(
                  (PaymentType element) {
                    element = element.copyWith(isSelected: false);
                    if (element.paymentTileName ==
                        paymentType.paymentTileName) {
                      element = element.copyWith(isSelected: true);
                    }

                    return element;
                  },
                ).toList();

                return paymentMethodModel.copyWith(paymentTypeList: typeList);
              },
            ).toList();

            emit(
              state.copyWith(paymentMethodList: paymentMethodList),
            );
          },
        );
      },
    );
  }
}
