import 'package:flutter/material.dart';

class SearchResultComponent extends StatefulWidget {
  final String link;
  final String text;
  final Function()? ontap;
  const SearchResultComponent(
      {Key? key, required this.link, required this.text, required this.ontap})
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
        Text(widget.link),
        Padding(
          padding: const EdgeInsets.only(bottom: 7),
          child: InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            onTap: widget.ontap,
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
                Text(
                  widget.text,
                  style: TextStyle(
                      color: Colors.grey,
                      decoration: _showUnderline
                          ? TextDecoration.underline
                          : TextDecoration.none),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
