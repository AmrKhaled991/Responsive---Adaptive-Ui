import 'package:flutter/material.dart';
import 'package:flutter_responsive/features/models/Listtilemodel.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_responsive/core/Global_Utils/Styles.dart';

class CustomLIsttile_ extends StatelessWidget {
  Listtilemodel model;
  CustomLIsttile_({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(model.image_icon),
        title: Align(
          alignment: Alignment.centerLeft,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              model.name,
              style: Styles.textSemiBold16(context),
            ),
          ),
        ),
        subtitle: Align(
          alignment: Alignment.centerLeft,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              model.email,
              style: Styles.textRegular12(context),
            ),
          ),
        ),
      ),
    );
  }
}
