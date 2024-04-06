import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_responsive/features/presetnion2/widgets/drowerwidget/CustomDrwoer.dart';
import 'package:flutter_responsive/features/presetnion2/widgets/drowerwidget/allexpenses_tab_mob.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Expanded(child: CustomDrwoer()),
      SizedBox(
        width: 24,
      ),
      Expanded(
          flex: 3,
          child: Padding(
              padding: EdgeInsets.only(
                top: 40.0,
              ),
              child: Allexpenses_tab_mob()))
    ]);
  }
}
