import 'package:flutter/material.dart';
import 'package:store/tabs/homeTab.dart';
import 'package:store/widgets/customDrawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _pageController = PageController();

    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
          body: HomeTab(),
          drawer: CustomDrawer(_pageController),
        )
      ],
    );
  }
}