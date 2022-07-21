import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final Widget mobileScreenLayout;
  final Widget webScreenLayout;
  const HomePage(
      {Key? key,
      required this.mobileScreenLayout,
      required this.webScreenLayout})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        if (constraints.maxWidth <= 700) {
          return mobileScreenLayout;
        } else {
          return webScreenLayout;
        }
      }),
    );
  }
}
