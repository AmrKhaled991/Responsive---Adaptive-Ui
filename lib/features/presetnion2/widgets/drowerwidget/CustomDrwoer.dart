// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_responsive/core/Global_Utils/App_assets.dart';
import 'package:flutter_responsive/features/models/Listtilemodel.dart';
import 'package:flutter_responsive/features/presetnion2/CustomLIsttile_.dart';
import 'package:flutter_responsive/features/presetnion2/widgets/drowerwidget/DashboardList.dart';
import 'package:flutter_responsive/features/presetnion2/widgets/drowerwidget/bottomPartDrwer.dart';

class CustomDrwoer extends StatelessWidget {
  const CustomDrwoer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 15,
            ),
          ),
          SliverToBoxAdapter(
            child: CustomLIsttile_(
                model: const Listtilemodel(
                    email: 'amrkhaled033@gmail.com',
                    name: 'Amr Khaled',
                    image_icon: Assets.imagesProfileAvatar)),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 28,
            ),
          ),
          DashboardList(),
          const SliverFillRemaining(
              child: SizedBox(
            height: 20,
          )),
          const bottomPartDrwer(),
        ],
      ),
    );
  }
}
