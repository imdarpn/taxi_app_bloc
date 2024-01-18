import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../local_data/local_data_source.dart';

part 'localization_event.dart';

part 'localization_state.dart';

part 'localization_bloc.freezed.dart';

@Injectable()
class LocalizationBloc extends Bloc<LocalizationEvent, LocalizationState> {
  LocalDataSource localDataSource;
  LocalizationBloc({required this.localDataSource}) : super(const LocalizationState.initial()) {
    on<LocalizationEvent>(
          (event, emit) async{
        await event.when(
          changeLocale: () async{
            await localDataSource.setData("lang",state.langCode);
            emit(state.copyWith(locale: Locale(state.langCode.split("-")[0],state.langCode.split("-")[1]),langCode: state.langCode));
          },
          getLocale: () async {
            var lang = await localDataSource.getData("lang");
            if(lang!=null && lang!=""){
              emit(state.copyWith(locale: Locale(lang.split("-")[0],lang.split("-")[1]),langCode: lang));
            }else{
              emit(state.copyWith(locale: const Locale("en","US"), langCode: 'en-US'));
            }
          }, radioChange: (String value) {
          emit(state.copyWith(langCode: value),);
        },
        );
      },
    );
  }
}
