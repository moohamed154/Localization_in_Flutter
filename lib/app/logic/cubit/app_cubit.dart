import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localization/cache/cache_helper.dart';
import 'package:localization/cache/cache_helper_key.dart';

part 'app_state.dart';

enum LanguageState { english, arabic, system }

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitialState()) {
    _loadLanguage();
  }

  static AppCubit get(context) => BlocProvider.of(context);

  //*select language

  LanguageState currentLanguage = LanguageState.system;

  Future<void> selectLanguage(LanguageState language) async {
    currentLanguage = language;
    await CacheHelper().saveData(
      key: CacheHelperKey.language,
      value: currentLanguage.name,
    );
    emit(LanguageSelectedState());
  }

  //*save language
  Future<void> _loadLanguage() async {
    final dynamic savedLanguage = CacheHelper().getData(
      key: CacheHelperKey.language,
    );
    if (savedLanguage is String) {
      currentLanguage = LanguageState.values.firstWhere(
        (element) => element.name == savedLanguage,
        orElse: () => LanguageState.system,
      );
    }
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
}
