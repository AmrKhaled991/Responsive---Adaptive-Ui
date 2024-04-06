// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_responsive/core/Global_Utils/Styles.dart';

import 'custom_text_bottom.dart';

class QuickInviocFormFields extends StatelessWidget {
  String hintext;
  String title;
  QuickInviocFormFields({
    Key? key,
    required this.hintext,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: Styles.textMedium16(context)),
        const SizedBox(
          height: 12,
        ),
        CustomTextBottom(
          hinttex: hintext,
        )
      ],
    );
  }
}
