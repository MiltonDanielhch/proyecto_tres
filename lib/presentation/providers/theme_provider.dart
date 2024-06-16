import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:proyecto_tres/config/theme/app_theme.dart';

//Listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);

//estado => isDarkmodeProvider = boolean
final isDarkmodeProvider = StateProvider((ref) => false);

//un simple int
final selectedColorProvider = StateProvider((ref) => 0);

//un objeto de tipo AppTheme (custom)
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

//controller o Notifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  //STATE  = Estado = new  AppTheme();
  ThemeNotifier() : super(AppTheme());

  void toggleDarkmode() {
    state = state.copyWith(isDarkmode: !state.isDarkmode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}
