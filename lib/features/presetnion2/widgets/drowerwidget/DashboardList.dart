import 'package:flutter/material.dart';
import 'package:flutter_responsive/core/Global_Utils/App_assets.dart';
import 'package:flutter_responsive/features/models/dashlistmodle.dart';
import 'package:flutter_responsive/features/presetnion2/widgets/drowerwidget/CustomDashitem.dart';

class DashboardList extends StatefulWidget {
  DashboardList({super.key});

  static const List<DrowaritemModel> items = [
    DrowaritemModel(name: 'Dashboard', image_icon: Assets.imagesDashboard),
    DrowaritemModel(
        name: 'My Transaction', image_icon: Assets.imagesTransaction),
    DrowaritemModel(name: 'Statistics', image_icon: Assets.imagesStatistics),
    DrowaritemModel(name: 'Wallet Account', image_icon: Assets.imagesWallet),
    DrowaritemModel(
        name: 'My Investments', image_icon: Assets.imagesInvestments),
  ];

  @override
  State<DashboardList> createState() => _DashboardListState();
}

class _DashboardListState extends State<DashboardList> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: DashboardList.items.length,
      separatorBuilder: (context, index) => const SizedBox(
        height: 20,
      ),
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          if (index == selected) {
            return;
          } else {
            selected = index;
          }

          setState(() {});
        },
        child: index != selected
            ? CustomDrwaritem(
                assetName: DashboardList.items[index].image_icon,
                title: DashboardList.items[index].name)
            : Selcted_CustomDrwaritem(
                assetName: DashboardList.items[index].image_icon,
                title: DashboardList.items[index].name),
      ),
    );
  }
}
