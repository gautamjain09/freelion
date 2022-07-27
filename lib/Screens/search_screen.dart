import 'package:flutter/material.dart';
import 'package:freelion/Services/api_service.dart';
import 'package:freelion/Support_Widgets/web/search_footer.dart';
import 'package:freelion/Support_Widgets/web/search_header.dart';
import 'package:freelion/Support_Widgets/web/search_tabs.dart';
import 'package:freelion/colors.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // < ------------------- Search Header ------------------------------>

            const SearchHeader(),

            // < ------------------- Search Tabs ------------------------------>

            const Padding(
              padding: EdgeInsets.only(left: 150),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SearchTabs(),
              ),
            ),
            const Divider(
              height: 0,
              thickness: 1,
            ),

            // <------------------ Search results --------------------------->

            FutureBuilder(
              future: ApiService().fetchData(queryTerm: 'Codeforces'),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 150, top: 12),
                        child: Text(
                          "About ${snapshot.data?['searchInformation']['formattedTotalResults']} results in (${snapshot.data?['searchInformation']['formattedSearchTime']}) seconds",
                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  );
                }
                return const Center(child: CircularProgressIndicator());
              },
            ),

            // < ------------------- Pagination ------------------------------>

            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "< Previous",
                      style: TextStyle(fontSize: 16, color: blueColor),
                    ),
                  ),
                  const SizedBox(width: 20),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Next >",
                      style: TextStyle(fontSize: 16, color: blueColor),
                    ),
                  ),
                ],
              ),
            ),

            // <---------------------- Search Footer -------------------------->

            const SearchFooter(),
          ],
        ),
      ),
    );
  }
}
