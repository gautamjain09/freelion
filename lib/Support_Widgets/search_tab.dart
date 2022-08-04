import 'package:flutter/material.dart';
import 'package:freelion/colors.dart';

class SearchTab extends StatelessWidget {
  final IconData icon;
  final bool isActive;
  final String text;
  const SearchTab(
      {Key? key, required this.icon, this.isActive = false, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 16,
              color: isActive ? blueColor : Colors.grey,
            ),
            const SizedBox(width: 4),
            Text(
              text,
              style: TextStyle(
                fontSize: 14,
                color: isActive ? blueColor : Colors.grey,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        isActive
            ? Container(
                height: 2,
                width: 40,
                color: blueColor,
              )
            : Container(),
      ],
    );
  }
}
