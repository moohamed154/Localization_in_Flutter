import 'package:flutter/material.dart';
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
          children: [Text(S.current.hello, style: TextStyle(fontSize: 30))],
        ),
      ),
    );
  }
}
