// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_responsive/core/constent.dart';

import 'custom_detactore_container.dart';

class CustomIdcator extends StatelessWidget {
  int page;
  CustomIdcator({
    Key? key,
    required this.page,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          3,
          (index) => Padding(
                padding: EdgeInsets.only(right: 3.0),
                child: CustomDetactore_container(check: (page == index)),
              )),
    );
  }
}
