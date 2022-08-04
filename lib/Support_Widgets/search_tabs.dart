import 'package:flutter/material.dart';
import 'package:freelion/Support_Widgets/search_tab.dart';

class SearchTabs extends StatelessWidget {
  const SearchTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: const [
          SearchTab(
            icon: Icons.search,
            isActive: true,
            text: "All",
          ),
          SizedBox(width: 20),
          SearchTab(
            icon: Icons.image,
            // isActive: true,
            text: "Images",
          ),
          SizedBox(width: 20),
          SearchTab(
            icon: Icons.map,
            // isActive: true,
            text: "Maps",
          ),
          SizedBox(width: 20),
          SearchTab(
            icon: Icons.article,
            // isActive: true,
            text: "News",
          ),
          SizedBox(width: 20),
          SearchTab(
            icon: Icons.shop,
            // isActive: true,
            text: "Shopping",
          ),
          SizedBox(width: 20),
          SearchTab(
            icon: Icons.more_vert,
            // isActive: true,
            text: "More",
          ),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}
