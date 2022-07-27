import 'dart:html';

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
          color: searchColor,
          padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 12),
          child: Row(
            children: [
              const Text(
                "India",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
              const SizedBox(width: 10),
              Container(
                height: 20,
                width: 1,
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
                style: TextStyle(fontSize: 13, color: primaryColor),
              ),
            ],
          ),
        ),
        const Divider(
          thickness: 0.7,
          height: 0.5,
          color: Colors.grey,
        ),
        Container(
          color: searchColor,
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 150),
          child: Row(
            children: const [
              Text(
                "Help",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(width: 30),
              Text(
                "Send Feedback",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(width: 30),
              Text(
                "Privacy",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(width: 30),
              Text(
                "Terms",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        )
      ],
    );
  }
}
