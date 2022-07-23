import 'package:flutter/material.dart';
import 'package:freelion/Support_Widgets/web/search_header.dart';
import 'package:freelion/Support_Widgets/web/search_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SearchHeader(),
            Padding(
              padding: EdgeInsets.only(left: 150),
              child: SearchTabs(),
            ),
            Divider(
              height: 0,
              thickness: 1,
            ),
            // Search results
          ],
        ),
      ),
    );
  }
}
