import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/common/common_methods.dart';
import '../../../../core/common/view_models/faq_model.dart';
part 'faq_event.dart';

part 'faq_state.dart';

part 'faq_bloc.freezed.dart';

@Injectable()
class FaqBloc extends Bloc<FaqEvent, FaqState> {
  FaqBloc() : super(const FaqState.initial()) {
    on<FaqEvent>(
      (event, emit) {
        event.when(
          started: () {
            emit(
              state.copyWith(faqList: CommonMethods.getFaqModelList()),
            );
          },
          expansionChanged: (index) {
            List<FaqModel> faqList = state.faqList.toList();

            faqList.forEach((element) {
              if (element.id == index) {
                element.isExpanded = true;
              } else {
                element.isExpanded = false;
              }
            });

            emit(
              state.copyWith(
                expandedValue: index,
                faqList: faqList,
              ),
            );
          },
        );
      },
    );
  }
}
