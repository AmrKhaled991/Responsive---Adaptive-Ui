// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_responsive/core/Global_Utils/Styles.dart';

class CustomTextbottum extends StatelessWidget {
  String text;
  Color backgroundcolor;
  CustomTextbottum({
    Key? key,
    required this.text,
    required this.backgroundcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundcolor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: FittedBox(
            child: Text(
              text,
              style: Styles.textSemiBold16(context),
            ),
          ),
        ));
  }
}
