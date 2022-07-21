import 'package:flutter/material.dart';

class webSearch extends StatelessWidget {
  const webSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            "assets/images/google-logo.png",
            height: MediaQuery.of(context).size.height * 0.15,
          ),
        )
      ],
    );
  }
}
