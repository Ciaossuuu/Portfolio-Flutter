import 'package:MyPortfolio/NavigationBar/navbar.dart';
import 'package:MyPortfolio/Pages/Home/Introduction/introduction.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Size size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          width: size.width,
          height: size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              NavigationBar(),
              Expanded(child: Introduction()),
            ],
          )),
    );
  }
}
