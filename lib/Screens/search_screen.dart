import 'package:flutter/material.dart';
import 'package:freelion/Services/api_service.dart';
import 'package:freelion/Support_Widgets/search_footer.dart';
import 'package:freelion/Support_Widgets/search_header.dart';
import 'package:freelion/Support_Widgets/search_result_component.dart';
import 'package:freelion/Support_Widgets/search_tabs.dart';
import 'package:freelion/colors.dart';

class SearchScreen extends StatelessWidget {
  final String searchQuery;
  final String start;

  const SearchScreen({Key? key, required this.searchQuery, required this.start})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Title(
        color: Colors.blue,
        title: searchQuery,
        child: Scaffold(
          body: SingleChildScrollView(
            // scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // < ------------------- Search Header ------------------------------>

                SizedBox(height: 25, width: size.width),
                const SearchHeader(),

                // < ------------------- Search Tabs ------------------------------>

                Padding(
                  padding: EdgeInsets.only(left: size.width <= 700 ? 15 : 150),
                  child: const SingleChildScrollView(
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
                  future: ApiService()
                      .fetchData(queryTerm: searchQuery, start: start),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                              left: size.width <= 700 ? 15 : 150,
                              top: 10,
                            ),
                            child: Text(
                              "About ${snapshot.data?['searchInformation']['formattedTotalResults']} results in (${snapshot.data?['searchInformation']['formattedSearchTime']}) seconds",
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ),

                          // Search Results
                          ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: snapshot.data?['items'].length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: size.width <= 700 ? 15 : 150,
                                        top: 10),
                                    child: SearchResultComponent(
                                      link: snapshot.data?['items'][index]
                                          ['formattedUrl'],
                                      text: snapshot.data?['items'][index]
                                          ['title'],
                                      linkToGo: snapshot.data?['items'][index]
                                          ['link'],
                                      description: snapshot.data?['items']
                                          [index]['snippet'],
                                    ),
                                  ),
                                ],
                              );
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
                                  onPressed: () {
                                    if (start != "0") {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: ((context) {
                                            return SearchScreen(
                                                searchQuery: searchQuery,
                                                // Gives the previous 10 results
                                                start: (int.parse(start) - 10)
                                                    .toString());
                                          }),
                                        ),
                                      );
                                    }
                                  },
                                  child: const Text(
                                    "< Previous",
                                    style: TextStyle(
                                        fontSize: 16, color: blueColor),
                                  ),
                                ),
                                const SizedBox(width: 20),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: ((context) {
                                          return SearchScreen(
                                              searchQuery: searchQuery,
                                              // Gives the Next 10 results
                                              start: (int.parse(start) + 10)
                                                  .toString());
                                        }),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    "Next >",
                                    style: TextStyle(
                                        fontSize: 16, color: blueColor),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // <---------------------- Search Footer -------------------------->
                          const SearchFooter(),
                        ],
                      );
                    }
                    return const Center(child: CircularProgressIndicator());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
