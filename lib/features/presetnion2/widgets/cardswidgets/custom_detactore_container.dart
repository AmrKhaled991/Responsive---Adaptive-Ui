// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_responsive/core/constent.dart';

class CustomDetactore_container extends StatelessWidget {
  const CustomDetactore_container({
    super.key,
    required this.check,
  });

  final bool check;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: check ? 32 : 8,
        height: 8,
        decoration: ShapeDecoration(
          color: check ? babeblue : gray,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ));
  }
}
