import 'package:flutter/material.dart';
import 'package:freelion/colors.dart';

class LinkText extends StatefulWidget {
  final String link;
  final String text;
  final Function()? onTap;
  final TextStyle? textStyle;

  const LinkText(
      {Key? key,
      required this.link,
      required this.text,
      this.onTap,
      this.textStyle})
      : super(key: key);

  @override
  _LinkTextState createState() => _LinkTextState();
}

class _LinkTextState extends State<LinkText> {
  bool _showUnderLine = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      onTap: widget.onTap,
      onHover: (hovering) {
        setState(() {
          _showUnderLine = hovering;
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
          const SizedBox(height: 2),
          Text(
            widget.text,
            style: widget.textStyle != null
                ? widget.textStyle?.copyWith(
                    decoration: _showUnderLine
                        ? TextDecoration.underline
                        : TextDecoration.none)
                : TextStyle(
                    color: blueColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    decoration: _showUnderLine
                        ? TextDecoration.underline
                        : TextDecoration.none,
                  ),
          ),
        ],
      ),
    );
  }
}
