import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_responsive/core/Global_Utils/App_assets.dart';
import 'package:flutter_responsive/core/Global_Utils/Styles.dart';
import 'package:flutter_responsive/features/models/Listtilemodel.dart';
import 'package:flutter_responsive/features/presetnion2/CustomLIsttile_.dart';

class Latest_Transaction extends StatelessWidget {
  static const List<Listtilemodel> items = [
    Listtilemodel(
      email: 'amrkhaled033@gmail.com',
      name: 'amr',
      image_icon: Assets.imagesAvatar1,
    ),
    Listtilemodel(
      email: 'amrkhaled033@gmail.com',
      name: 'amr',
      image_icon: Assets.imagesAvatar2,
    ),
    Listtilemodel(
      email: 'amrkhaled033@gmail.com',
      name: 'amr',
      image_icon: Assets.imagesAvatar1,
    ),
    Listtilemodel(
      email: 'amrkhaled033@gmail.com',
      name: 'amr',
      image_icon: Assets.imagesAvatar2,
    )
  ];

  const Latest_Transaction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: Styles.textMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: items
                .map((e) => IntrinsicWidth(
                      child: CustomLIsttile_(model: e),
                    ))
                .toList(),
          ),
        )
      ],
    );
  }
}
