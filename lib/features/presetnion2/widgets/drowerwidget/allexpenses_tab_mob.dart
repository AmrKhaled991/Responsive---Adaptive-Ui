import 'package:flutter/material.dart';
import 'package:flutter_responsive/features/presetnion2/widgets/allexpresswidgets/Allexpenses.dart';
import 'package:flutter_responsive/features/presetnion2/widgets/cardswidgets/cards.dart';

class Allexpenses_tab_mob extends StatelessWidget {
  const Allexpenses_tab_mob({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(slivers: [
      SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Allexpenses(),
          ],
        ),
      ),
      SliverToBoxAdapter(
          child: SizedBox(
        height: 24,
      )),
      SliverToBoxAdapter(
        child: Cards_Incom(),
      )
    ]);
  }
}
