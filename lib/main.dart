import 'package:flutter/material.dart';
import 'package:proyecto_tres/config/presentation/screens/home_screen.dart';
import 'package:proyecto_tres/config/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 4).getTheme(),
        home: const HomeScreen());
  }
}
