import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freelion/colors.dart';
import '../Support_Widgets/search_bar.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.grey,
          ),
        ),
        title: SizedBox(
          width: MediaQuery.of(context).size.width * 0.30,
          child: const DefaultTabController(
            length: 2,
            child: TabBar(
              // labelColor: blueColor,
              unselectedLabelColor: Colors.grey,
              indicatorColor: blueColor,
              tabs: [
                Tab(text: "All"),
                Tab(text: "Images"),
              ],
            ),
          ),
        ),
        actions: [
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
            const webSearch(),
          ],
        ),
      ),
    );
  }
}
