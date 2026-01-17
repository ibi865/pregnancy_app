import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'resources/getx_localization/languages.dart';
import 'resources/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'PregnancyUAE',
      translations: Languages(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFE91E63)),
        useMaterial3: true,
        fontFamily: 'Outfit',
      ),
      getPages: AppRoutes.appRoutes(),
    );
  }
}
