// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_responsive/core/Global_Utils/Styles.dart';

import 'package:flutter_responsive/features/models/Chartmodel.dart';

import 'chartpart.dart';
import 'custom_incom_list_item.dart';

class Incom_body extends StatelessWidget {
  static final List<Chartmodel> itemslist = [
    Chartmodel(
      color: Color(0xFF208BC7),
      title: 'Design service',
      parsatege: '40%',
    ),
    Chartmodel(
      color: Color(0xFF4DB7F2),
      title: 'Design product',
      parsatege: '25%',
    ),
    Chartmodel(
      color: Color(0xFF064060),
      title: 'Product royalti',
      parsatege: '20%',
    ),
    Chartmodel(
      color: Color(0xFFE2DECD),
      title: 'Other',
      parsatege: '22%',
    ),
  ];
  Incom_body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Chartpart(),
        Expanded(
          flex: 2,
          child: Column(
            children: itemslist
                .map((e) => CustomIncomListItem(
                      chartmodel: e,
                    ))
                .toList(),
          ),
        )
      ],
    );
  }
}
