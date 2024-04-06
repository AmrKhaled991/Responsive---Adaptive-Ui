import 'package:flutter/material.dart';
import 'package:flutter_responsive/core/Global_Utils/App_assets.dart';
import 'package:flutter_responsive/features/presetnion2/widgets/drowerwidget/CustomDashitem.dart';

class bottomPartDrwer extends StatelessWidget {
  const bottomPartDrwer({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          CustomDrwaritem(
              assetName: Assets.imagesSettingsystem, title: 'Settin gsystem'),
          const SizedBox(
            height: 20,
          ),
          CustomDrwaritem(
              assetName: Assets.imagesLogoutAccount, title: 'Logout Account'),
          const SizedBox(
            height: 48,
          )
        ],
      ),
    );
  }
}
