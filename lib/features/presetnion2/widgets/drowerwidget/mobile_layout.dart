import 'package:flutter/material.dart';
import 'package:flutter_responsive/features/presetnion2/widgets/drowerwidget/allexpenses_tab_mob.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 16, right: 16, left: 16, bottom: 16),
      child: Allexpenses_tab_mob(),
    );
  }
}
