import 'package:celita/components/features/authentication/screens/splash%20screen/splash_screen.dart';
import 'package:celita/components/features/authentication/screens/translation_screen/translation_screen.dart';
import 'package:celita/components/features/authentication/screens/welcome%20screen/welcome_screen.dart';
import 'package:celita/components/utils/theme/widget%20theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const CelitaMainApp());
}

class CelitaMainApp extends StatefulWidget {
  const CelitaMainApp({super.key});

  @override
  State<CelitaMainApp> createState() => _CelitaMainAppState();
}

class _CelitaMainAppState extends State<CelitaMainApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: CEppTheme.lighTheme,
      darkTheme: CEppTheme.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: TranslatorScreen(),
    );
  }
}
