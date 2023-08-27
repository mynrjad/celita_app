import 'package:celita/components/utils/theme/widget%20theme/theme.dart';
import 'package:flutter/material.dart';

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
    return MaterialApp(
      theme: CEppTheme.lighTheme,
      darkTheme: CEppTheme.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
    );
  }
}
