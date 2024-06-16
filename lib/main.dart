import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:proyecto_tres/config/router/app_router.dart';
import 'package:proyecto_tres/config/theme/app_theme.dart';
import 'package:proyecto_tres/presentation/providers/theme_provider.dart';

void main() => runApp(
      const ProviderScope(
        child: MyApp(),
      ),
    );

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final isDarkmode = ref.watch(isDarkmodeProvider);
    // final selectedColor = ref.watch(selectedColorProvider);

    final AppTheme appTheme = ref.watch(themeNotifierProvider);

    return MaterialApp.router(
      title: 'Flutter Widgets',
      routerConfig: appRoute,
      debugShowCheckedModeBanner: false,
      theme: appTheme
          .getTheme(), //AppTheme(selectedColor: selectedColor, isDarkmode: isDarkmode).getTheme(),
    );
  }
}
