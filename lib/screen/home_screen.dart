import 'package:flutter/material.dart';
import 'package:localization/app/logic/cubit/app_cubit.dart';
import 'package:localization/generated/l10n.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).home)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(S.current.hello, style: TextStyle(fontSize: 30)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                AppCubit.get(context).selectLanguage(LanguageState.arabic);
              },
              child: Text(
                S.current.arabic_language,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                AppCubit.get(context).selectLanguage(LanguageState.english);
              },
              child: Text(
                S.current.english_language,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                AppCubit.get(context).selectLanguage(LanguageState.system);
              },
              child: Text(
                S.current.system_language,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
