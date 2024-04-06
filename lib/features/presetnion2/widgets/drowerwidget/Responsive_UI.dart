import 'package:flutter/material.dart';
import 'package:flutter_responsive/core/constent.dart';
import 'package:flutter_responsive/features/presetnion2/Dashboard.dart';
import 'package:flutter_responsive/features/presetnion2/widgets/Layers.dart';
import 'package:flutter_responsive/features/presetnion2/widgets/drowerwidget/CustomDrwoer.dart';
import 'package:flutter_responsive/features/presetnion2/widgets/drowerwidget/tablet_layout.dart';

import 'mobile_layout.dart';

class Responsive_UI extends StatefulWidget {
  Responsive_UI({super.key});

  @override
  State<Responsive_UI> createState() => _Responsive_UIState();
}

class _Responsive_UIState extends State<Responsive_UI> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MediaQuery.sizeOf(context).width < 800 ? Customappbart() : null,
        drawer: const Padding(
          padding: EdgeInsets.only(right: 100),
          child: CustomDrwoer(),
        ),
        key: _scaffoldkey, // Assign the key to   Scaffold.

        backgroundColor: const Color(0xffdcdcdc),
        body: Layers(
          desktoplayout: (context) => DashbordDescktop(),
          mobileLlayout: (context) => MobileLayout(),
          tabletLayout: (context) => TabletLayout(),
        ));
  }

  AppBar Customappbart() {
    return AppBar(
      backgroundColor: babeblue,
      leading: GestureDetector(
          onTap: () {
            _scaffoldkey.currentState!.openDrawer();
            setState(() {});
          },
          child: const Icon(Icons.menu)),
    );
  }
}
