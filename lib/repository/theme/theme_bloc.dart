import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../core/common/common_methods.dart';
import '../../core/services/storage_service/storage_keys.dart';

import '../../core/enums/theme_type.dart';
import '../../repository/local_data/local_data_source.dart';

part 'theme_event.dart';

part 'theme_state.dart';

part 'theme_bloc.freezed.dart';

@Injectable()
class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  LocalDataSource localDataSource;

  ThemeBloc({required this.localDataSource})
      : super(const ThemeState.initial(
            themeType: ThemeType.lightTheme, group: 1, isDark: false)) {
    on<ThemeEvent>(
      (event, emit) async {
        await event.when(
          started: () async {
            ThemeType themeType;
            int type = await localDataSource.getData(StorageKeys.keyTheme) ?? 1;
            if (type == 1) {
              themeType = ThemeType.lightTheme;
            } else if (type == 2) {
              themeType = ThemeType.darkTheme;
            } else {
              themeType = CommonMethods.isDark()
                  ? ThemeType.darkTheme
                  : ThemeType.lightTheme;
            }
            emit(state.copyWith(
                themeType: themeType,
                group: type,
                isDark: type == 1
                    ? false
                    : type == 3
                        ? CommonMethods.isDark()
                            ? true
                            : false
                        : true));
          },
          themeChange: () async {
            int index = state.group;
            if (index == 1) {
              emit(
                state.copyWith(themeType: ThemeType.lightTheme),
              );
              await localDataSource.setData(StorageKeys.keyTheme, 1);
            } else if (index == 2) {
              emit(
                state.copyWith(themeType: ThemeType.darkTheme),
              );
              await localDataSource.setData(StorageKeys.keyTheme, 2);
            } else {
              emit(
                state.copyWith(
                    themeType: CommonMethods.isDark()
                        ? ThemeType.darkTheme
                        : ThemeType.lightTheme),
              );
              await localDataSource.setData(StorageKeys.keyTheme, 3);
            }
            emit(state.copyWith(
                isDark: index == 1
                    ? false
                    : index == 3
                        ? CommonMethods.isDark()
                            ? true
                            : false
                        : true));
          },
          radioChange: (int index) {
            emit(
              state.copyWith(group: index),
            );
            print("RADIO THEME: ${state.themeType}");
          },
          themeListener: (brightness) {
            if (state.group == 3) {
              emit(
                state.copyWith(
                  themeType: brightness == Brightness.dark
                      ? ThemeType.darkTheme
                      : ThemeType.lightTheme,
                  isDark: brightness == Brightness.dark ? true : false,
                ),
              );
            }
          },
        );
      },
    );
  }
}
