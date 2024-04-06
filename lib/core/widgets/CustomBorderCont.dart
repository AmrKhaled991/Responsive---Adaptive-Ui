// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomBorderCont extends StatelessWidget {
  Widget widget;
  double? padding;

  CustomBorderCont({
    super.key,
    required this.widget,
    this.padding,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      padding: EdgeInsets.all(padding ?? 20),
      child: widget,
    );
  }
}
