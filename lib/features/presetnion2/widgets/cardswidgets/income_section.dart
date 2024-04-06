import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_responsive/core/widgets/CustomBorderCont.dart';
import 'package:flutter_responsive/features/presetnion2/widgets/allexpresswidgets/AllepensesHeader.dart';

import 'incom_body.dart';

class Income_section extends StatelessWidget {
  const Income_section({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBorderCont(
        widget: Column(
      children: [
        CustomHeader_dropdwon(
          headertext: 'Income',
        ),
        Incom_body()
      ],
    ));
  }
}
