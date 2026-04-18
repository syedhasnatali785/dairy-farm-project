import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Socialmediaicons extends StatelessWidget {
  const Socialmediaicons({super.key, required this.ontap});
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 14,
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(25),
          onTap: ontap,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: BoxBorder.all(color: Colors.grey),
            ),
            child: FaIcon(FontAwesomeIcons.google, color: Colors.blue),
          ),
        ),
        InkWell(
          borderRadius: BorderRadius.circular(25),

          onTap: ontap,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: BoxBorder.all(color: Colors.grey),
            ),
            child: FaIcon(FontAwesomeIcons.appStore, color: Colors.black),
          ),
        ),
        InkWell(
          borderRadius: BorderRadius.circular(25),

          onTap: ontap,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: BoxBorder.all(color: Colors.grey),
            ),
            child: FaIcon(FontAwesomeIcons.facebook, color: Colors.blue),
          ),
        ),
      ],
    );
  }
}
