import 'package:MyPortfolio/Pages/Home/home.dart';
import 'package:MyPortfolio/Routing/router.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  print('generateRoute: ${settings.name}');
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(Homepage());
    // case AboutRoute:
    //   return _getPageRoute(AboutView());
    // case ExperienceRoute:
    //   return _getPageRoute(ExperienceView());
    // case ProjectRoute:
    //   return _getPageRoute(ProjectView());
    default:
      return _getPageRoute(Homepage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return _FadeRoute(
    child: child,
  );
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  _FadeRoute({this.child})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
