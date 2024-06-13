import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:proyecto_tres/config/theme/app_theme.dart';

//estado => isDarkmodeProvider = boolean

final isDarkmodeProvider = StateProvider((ref) => false);

//Listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);
