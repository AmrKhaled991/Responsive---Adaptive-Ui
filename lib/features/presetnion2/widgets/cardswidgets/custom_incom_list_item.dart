// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_responsive/core/Global_Utils/Styles.dart';
import 'package:flutter_responsive/features/models/Chartmodel.dart';

class CustomIncomListItem extends StatelessWidget {
  Chartmodel chartmodel;

  CustomIncomListItem({
    Key? key,
    required this.chartmodel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: chartmodel.color,
          shape: OvalBorder(),
        ),
      ),
      title: Align(
        alignment: Alignment.centerLeft,
        child: FittedBox(
            fit: BoxFit.scaleDown,
            child:
                Text(chartmodel.title, style: Styles.textRegular16(context))),
      ),
      trailing: FittedBox(
          fit: BoxFit.scaleDown,
          child:
              Text(chartmodel.parsatege, style: Styles.textMedium16(context))),
    );
  }
}
