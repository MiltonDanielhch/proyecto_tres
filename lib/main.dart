import 'package:flutter/material.dart';
import 'package:proyecto_tres/config/router/app_router.dart';
import 'package:proyecto_tres/config/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Widgets',
      routerConfig: appRoute,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 1).getTheme(),
    );
  }
}
