import 'package:fl_components/models/menu_option.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
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
      route: 'card',
      name: 'Tarjetas - Cards',
      screen: const CardScreen(),
      icon: Icons.card_membership,
    ),
    MenuOption(
      route: 'alert',
      name: 'Alertas - Alerts',
      screen: const AlertScreen(),
      icon: Icons.crisis_alert,
    ),
    MenuOption(
      route: 'avatar',
      name: 'Circle Avatar',
      screen: const AvatarScreen(),
      icon: Icons.supervised_user_circle_outlined,
    ),
    MenuOption(
      route: 'animated',
      name: 'Animated Container',
      screen: const AnimatedScreen(),
      icon: Icons.play_circle_outline_rounded,
    ),
    MenuOption(
      route: 'inputs',
      name: 'Text Inputs',
      screen: const InputsScreen(),
      icon: Icons.input_rounded,
    ),
    MenuOption(
      route: 'slider',
      name: 'Slider & Checks',
      screen: const SliderScreen(),
      icon: Icons.slideshow,
    ),
    MenuOption(
      route: 'listviewbuilder',
      name: 'Infinite Scroll & Pull to Refresh',
      screen: const ListViewBuilderScreen(),
      icon: Icons.build_circle_outlined,
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

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
