import 'package:flutter/material.dart';
import 'package:MyPortfolio/NavigationBar/navBarItem.dart';
import 'package:MyPortfolio/Routing/router.dart';
import 'package:MyPortfolio/Strings/hover.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({Key key}) : super(key: key);
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  Size size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: size.height * 0.1,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                height: 75,
                width: 75,
                child: Image.asset('RaynoLogo.png'),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  NavBarItem('Home', HomeRoute).moveUpOnHover,
                  SizedBox(
                    width: 60,
                  ),
                  NavBarItem('About', AboutRoute).moveUpOnHover,
                  SizedBox(
                    width: 60,
                  ),
                  NavBarItem('Experience', ExperienceRoute).moveUpOnHover,
                  SizedBox(
                    width: 60,
                  ),
                  NavBarItem('Projects', ProjectRoute).moveUpOnHover,
                ],
              )
            ]),
      ),
    );
  }
}
