// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_responsive/core/Global_Utils/Styles.dart';

class CustomHeader_dropdwon extends StatelessWidget {
  String headertext;
  CustomHeader_dropdwon({
    Key? key,
    required this.headertext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(headertext, style: Styles.textSemiBold16(context)),
        Container(
            padding: const EdgeInsets.all(12),
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Row(
              children: [
                Text('Monthly', style: Styles.textMedium16(context)),
                const SizedBox(
                  width: 18,
                ),
                Transform.rotate(
                    angle: 1.57079633,
                    child: const Icon(Icons.arrow_forward_ios_rounded))
              ],
            ))
      ],
    );
  }
}
