import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:proyecto_tres/config/theme/app_theme.dart';

//Listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);

//estado => isDarkmodeProvider = boolean
final isDarkmodeProvider = StateProvider((ref) => false);

//un simple int
final selectedColorProvider = StateProvider((ref) => 0);
