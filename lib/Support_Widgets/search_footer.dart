import 'package:flutter/material.dart';
import 'package:freelion/colors.dart';

class SearchFooter extends StatelessWidget {
  const SearchFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          width: size.width,
          color: Colors.black26,
          padding: EdgeInsets.symmetric(
            horizontal: size.width <= 700 ? 10 : 150,
            vertical: 10,
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const Text(
                  "India",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  height: 30,
                  width: 0.4,
                  color: Colors.grey,
                ),
                const SizedBox(width: 5),
                const Icon(
                  Icons.circle,
                  color: Colors.grey,
                  size: 10,
                ),
                const SizedBox(width: 10),
                const Text(
                  "452001 Indore, Madhya Pradesh, India",
                  style: TextStyle(fontSize: 11, color: primaryColor),
                ),
              ],
            ),
          ),
        ),
        const Divider(
          thickness: 0.2,
          height: 0.5,
          color: Colors.grey,
        ),
        Container(
          width: size.width,
          color: Colors.black26,
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: size.width <= 700 ? 10 : 150,
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                Text(
                  "Help",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                SizedBox(width: 30),
                Text(
                  "Send Feedback",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                SizedBox(width: 30),
                Text(
                  "Privacy",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                SizedBox(width: 30),
                Text(
                  "Terms",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
