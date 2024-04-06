// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_responsive/core/Global_Utils/Styles.dart';
import 'package:flutter_responsive/core/constent.dart';

class CustomTextBottom extends StatelessWidget {
  String hinttex;

  CustomTextBottom({
    Key? key,
    required this.hinttex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hinttex,
        hintStyle: Styles.textRegular14(context).copyWith(
          color: const Color(0xFFAAAAAA),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(12),
        ),
        filled: true,
        fillColor: Color(0xFFFAFAFA),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
