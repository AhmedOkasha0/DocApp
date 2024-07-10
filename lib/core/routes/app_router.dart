import 'package:doc_app/core/routes/routes.dart';
import 'package:doc_app/features/on_boarding/presentation/screen/on_boarding.dart';
import 'package:flutter/material.dart';

import '../common/widgets/no_route.dart';

class AppRouter {
  static Route generateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      settings: settings,
      builder: (context) {
        switch (settings.name) {
          case Routes.initScreen:
            return const OnBoardingScreen();

          default:
            return NoRouteScreen(routeName: settings.name!);
        }
      },
    );
  }
}
