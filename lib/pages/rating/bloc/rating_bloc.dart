
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../core/common/view_models/tip_amount_model.dart';

part 'rating_event.dart';

part 'rating_state.dart';

part 'rating_bloc.freezed.dart';

@Injectable()
class RatingBloc extends Bloc<RatingEvent, RatingState> {
  RatingBloc() : super(const RatingState.initial()) {
    on<RatingEvent>(
      (event, emit) {
        event.when(
          started: () {
            emit(
              state.copyWith(
                tipAmountList: [
                  const TipAmountModel(amount: 10, isSelected: false),
                  const TipAmountModel(amount: 20, isSelected: false),
                  const TipAmountModel(amount: 30, isSelected: false),
                ],
              ),
            );
          },
          tipSelected: (index) {
            List<TipAmountModel> tipList = state.tipAmountList.toList();

            if (tipList[index].isSelected) {
              tipList[index] = tipList[index].copyWith(isSelected: false);
            } else {
              tipList = tipList.map(
                (element) {
                  element = element.copyWith(isSelected: false);
                  return element;
                },
              ).toList();

              tipList[index] = tipList[index].copyWith(isSelected: true);
            }

            emit(
              state.copyWith(
                tipAmountList: tipList,
              ),
            );
          },
        );
      },
    );
  }
}
