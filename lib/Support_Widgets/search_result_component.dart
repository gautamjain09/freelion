import 'package:flutter/material.dart';
import 'package:freelion/colors.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SearchResultComponent extends StatefulWidget {
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
  State<SearchResultComponent> createState() => _SearchResultComponentState();
}

class _SearchResultComponentState extends State<SearchResultComponent> {
  bool _showUnderline = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 7),
          child: InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            onTap: () async {
              if (await canLaunchUrlString(widget.linkToGo)) {
                await launchUrlString(widget.linkToGo);
              }
            },
            onHover: (hovering) {
              setState(() {
                _showUnderline = hovering;
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.link,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  widget.text,
                  style: TextStyle(
                      color: blueColor,
                      fontSize: 20,
                      decoration: _showUnderline
                          ? TextDecoration.underline
                          : TextDecoration.none),
                ),
              ],
            ),
          ),
        ),
        Text(
          widget.description,
          style: const TextStyle(
            fontSize: 15,
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          height: 15,
        )
      ],
    );
  }
}
