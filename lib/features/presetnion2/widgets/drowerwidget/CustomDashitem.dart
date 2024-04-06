import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_responsive/core/Global_Utils/Styles.dart';
import 'package:flutter_responsive/core/constent.dart';
import 'package:flutter_svg/svg.dart';

class CustomDrwaritem extends StatelessWidget {
  final String assetName;
  final String title;

  CustomDrwaritem({
    Key? key,
    required this.assetName,
    required this.title,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(assetName),
      title: Text(
        title,
        style: Styles.textRegular16(context),
      ),
    );
  }
}

class Selcted_CustomDrwaritem extends StatelessWidget {
  final String assetName;
  final String title;

  const Selcted_CustomDrwaritem({
    super.key,
    required this.assetName,
    required this.title,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: 1),
        builder: (context, value, child) => Opacity(
          opacity: value,
          child: Container(
            color: babeblue,
            width: 3.74,
          ),
        ),
        duration: const Duration(seconds: 1),
      ),
      leading: SvgPicture.asset(assetName),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: Styles.textBold16(context),
        ),
      ),
    );
  }
}
