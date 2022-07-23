import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freelion/Screens/search_screen.dart';
import 'package:freelion/colors.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 5, right: 15, left: 10),
            child: Image.asset(
              "assets/images/google-logo.png",
              height: 30,
              width: 92,
            ),
          ),
          const SizedBox(width: 20),
          Container(
            height: 45,
            width: size.width * 0.4,
            decoration: BoxDecoration(
              color: searchColor,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: searchColor),
            ),
            child: TextFormField(
              style: const TextStyle(color: Colors.white, fontSize: 16),
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                suffixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        'assets/images/mic-icon.svg',
                        height: 20,
                        width: 20,
                      ),
                      const SizedBox(width: 10),
                      const Icon(
                        Icons.search,
                        color: blueColor,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
