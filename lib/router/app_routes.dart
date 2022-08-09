import 'package:fl_components/models/menu_option.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // TODO: borrar home
    MenuOption(
      route: 'home',
      name: 'Home Screen',
      screen: const HomeScreen(),
      icon: Icons.home,
    ),
    MenuOption(
      route: 'listview1',
      name: 'ListView Tipo 1',
      screen: const Listview1Screen(),
      icon: Icons.abc,
    ),
    MenuOption(
      route: 'listview2',
      name: 'ListView Tipo 2',
      screen: const Listview2Screen(),
      icon: Icons.abc,
    ),
    MenuOption(
      route: 'alert',
      name: 'Alertas - Alerts',
      screen: const AlertScreen(),
      icon: Icons.crisis_alert,
    ),
    MenuOption(
      route: 'card',
      name: 'Tarjetas - Cards',
      screen: const CardScreen(),
      icon: Icons.card_membership,
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': ((BuildContext context) => const HomeScreen()),
  //   'listview1': ((BuildContext context) => const Listview1Screen()),
  //   'listview2': ((BuildContext context) => const Listview2Screen()),
  //   'card': ((BuildContext context) => const CardScreen()),
  //   'alert': ((BuildContext context) => const AlertScreen()),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
