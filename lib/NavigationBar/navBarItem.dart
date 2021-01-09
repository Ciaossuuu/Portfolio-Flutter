import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:MyPortfolio/locator.dart';
import 'package:MyPortfolio/Services/locatorService.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  const NavBarItem(this.title, this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          locator<NavigationService>().navigateTo(navigationPath);
//        Navigator.of(context).pop();
        },
        child: Text(
          title,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
