import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_responsive/features/presetnion2/widgets/cardswidgets/cards.dart';
import 'package:flutter_responsive/features/presetnion2/widgets/allexpresswidgets/Allexpenses.dart';
import 'package:flutter_responsive/features/presetnion2/widgets/drowerwidget/CustomDrwoer.dart';

class DashbordDescktop extends StatelessWidget {
  const DashbordDescktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: CustomDrwoer()),
        SizedBox(
          width: 24,
        ),
        Expanded(
          flex: 5,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 40.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(flex: 3, child: Allexpenses()),
                  SizedBox(
                    width: 24,
                  ),
                  Expanded(flex: 2, child: Cards_Incom()),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
