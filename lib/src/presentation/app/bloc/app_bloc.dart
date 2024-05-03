import 'package:data/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../main.dart';
import '../../base/bloc/base_bloc.dart';
import '../../theme/theme.dart';
import 'app_event.dart';
import 'app_state.dart';

@injectable
class AppBloc extends BaseBloc<AppEvent, AppState> {
  AppBloc() : super(const AppState()) {
    on<AppInitiated>(
      _onAppInitiated,
    );

    on<AppThemeChanged>(
      _onAppThemeChanged,
      transformer: throttleTime(),
    );

    on<AppLanguageChanged>(
      _onAppLanguageChanged,
    );
  }

  void _onAppInitiated(AppInitiated event, Emitter<AppState> emit) {
    const languageCode = 'en';
    final themeMode = AppearanceMode.dark;
    final scale = 1.0;

    emit(state.copyWith(currentLanguageCode: languageCode, themeData: _getThemeData(themeMode), fontScale: scale));
  }

  void _onAppThemeChanged(AppThemeChanged event, Emitter<AppState> emit) {
    themeManager.setTheme(event.themeMode);
    emit(state.copyWith(themeData: _getThemeData(event.themeMode)));
  }

  void _onAppLanguageChanged(AppLanguageChanged event, Emitter<AppState> emit) {
    emit(state.copyWith(currentLanguageCode: event.languageCode));
  }

  ThemeData _getThemeData(AppearanceMode themeMode) {
    switch (themeMode) {
      case AppearanceMode.light:
        return lightTheme;
      case AppearanceMode.dark:
        return darkTheme;
      case AppearanceMode.system:
        final brightness = WidgetsBinding.instance.platformDispatcher.platformBrightness;
        return brightness == Brightness.light ? lightTheme : darkTheme;
      case AppearanceMode.contrast:
        return contrastTheme;
    }
  }
}
