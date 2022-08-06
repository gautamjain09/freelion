import 'package:flutter/material.dart';
import 'package:freelion/Support_Widgets/link_text.dart';
import 'package:freelion/colors.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SearchResultComponent extends StatelessWidget {
  final String link;
  final String text;
  final String linkToGo;
  final String description;

  const SearchResultComponent(
      {Key? key,
      required this.link,
      required this.text,
      required this.linkToGo,
      required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: LinkText(
            link: link,
            text: text,
            textStyle: const TextStyle(
              color: blueColor,
              fontSize: 20,
            ),
            onTap: () async {
              if (await canLaunchUrlString(linkToGo)) {
                await launchUrlString(linkToGo);
              }
            },
          ),
        ),
        Text(
          description,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
