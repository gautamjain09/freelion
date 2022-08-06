import 'package:flutter/material.dart';
import 'package:freelion/Support_Widgets/search_bar.dart';
import 'package:freelion/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const Text("Freelion"),
        backgroundColor: backgroundColor,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              "Gmail",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: primaryColor,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              "Images",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: primaryColor,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/images/more-apps.svg",
                color: primaryColor),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              onPressed: () {},
              color: Colors.indigo,
              padding: const EdgeInsets.all(15),
              child: const Text(
                "Sign In",
                style: TextStyle(color: primaryColor),
              ),
            ),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height / 4),
            const searchBar(),
          ],
        ),
      ),
    );
  }
}
