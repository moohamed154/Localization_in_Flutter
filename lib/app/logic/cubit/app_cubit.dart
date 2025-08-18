import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'app_state.dart';

enum LanguageState { english, arabic, system }

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());

  static AppCubit get(context) => BlocProvider.of(context);

  //*select language

  LanguageState currentLanguage = LanguageState.system;

  Future<void> selectLanguage(LanguageState language) async {
    currentLanguage = language;
    emit(LanguageSelectedState());
  }

  //*get language

  String getLanguage() {
    //*get device language
    String deviceLanguage = PlatformDispatcher.instance.locale.languageCode;

    switch (currentLanguage) {
      case LanguageState.english:
        return 'en';
      case LanguageState.arabic:
        return 'ar';
      case LanguageState.system:
        return deviceLanguage;
    }
  }

  //*save language
}
