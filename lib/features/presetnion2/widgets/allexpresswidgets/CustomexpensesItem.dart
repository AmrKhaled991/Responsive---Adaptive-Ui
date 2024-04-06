import 'package:flutter/material.dart';
import 'package:flutter_responsive/features/models/allexpensesmodel.dart';
import 'package:flutter_responsive/features/presetnion2/widgets/allexpresswidgets/AllexpensesItme.dart';

import 'selcted__allexpenses_itme.dart';

class CustomExpensesItem extends StatelessWidget {
  final Allexpensesmodel allexpensesmodel;
  final bool condion;
  CustomExpensesItem({
    Key? key,
    required this.allexpensesmodel,
    required this.condion,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
        firstCurve: Curves.easeIn,
        secondCurve: Curves.bounceInOut,
        firstChild: selcted_AllexpensesItme(
          allexpensesmodel: allexpensesmodel,
        ),
        secondChild: AllexpensesItme(
          allexpensesmodel: allexpensesmodel,
        ),
        crossFadeState:
            condion ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        duration: const Duration(milliseconds: 500));
  }
}
