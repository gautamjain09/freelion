import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freelion/Screens/search_screen.dart';
import 'package:freelion/colors.dart';

class searchBar extends StatelessWidget {
  const searchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            "assets/images/google-logo.png",
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width * 0.35,
          ),
        ),
        const SizedBox(height: 15),
        SizedBox(
          width: (size.width <= 700) ? size.width * 0.7 : size.width * 0.4,
          child: TextFormField(
            onFieldSubmitted: (value) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: ((context) {
                    return SearchScreen(searchQuery: value, start: '0');
                  }),
                ),
              );
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(35),
                borderSide: const BorderSide(color: searchBorder),
              ),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(10),
                child: SvgPicture.asset(
                  "assets/images/search-icon.svg",
                  color: searchBorder,
                ),
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.all(10),
                child: SvgPicture.asset(
                  "assets/images/mic-icon.svg",
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
