import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Riverpod Counter',
    subTitle: 'Introducción a riverpod',
    link: '/counter-river',
    icon: Icons.add,
  ),
  MenuItem(
      title: 'Botones',
      subTitle: 'Varios Botones en Flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Tarjetas',
      subTitle: 'UN contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card),
  MenuItem(
      title: 'Progress Indicators',
      subTitle: 'Generales y Controlados',
      link: '/progress',
      icon: Icons.refresh_rounded),
  MenuItem(
      title: 'Snackbars y dialogos',
      subTitle: 'Indicadores en Pantalla',
      link: '/snackbars',
      icon: Icons.info_outline),
  MenuItem(
      title: 'Animated Container',
      subTitle: 'Stateful widget animado',
      link: '/animated',
      icon: Icons.check_box_outline_blank),
  MenuItem(
      title: 'UI Controllers + Tiles',
      subTitle: 'Una serie de controles de flutter',
      link: '/ui-controllers',
      icon: Icons.check_box_outline_blank),
  MenuItem(
      title: 'Introduccion a la aplicación',
      subTitle: 'Pequeño tutorial Introductorio',
      link: '/tutorial',
      icon: Icons.accessible_rounded),
  MenuItem(
    title: 'infiniteScroll y pull',
    subTitle: 'Listas infinitas y pull to regresh',
    link: '/infinite',
    icon: Icons.list_alt_rounded,
  ),
];
