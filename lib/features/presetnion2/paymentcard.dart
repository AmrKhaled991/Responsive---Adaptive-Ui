// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import 'package:flutter_responsive/core/Global_Utils/App_assets.dart';
import 'package:flutter_responsive/core/Global_Utils/Styles.dart';
import 'package:flutter_responsive/core/constent.dart';

class Paymentcard extends StatelessWidget {
  Paymentcard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Stack(
        children: [
          Container(
            decoration: ShapeDecoration(
              color: babeblue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          Positioned.fill(child: SvgPicture.asset(Assets.imagesWaves)),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  minVerticalPadding: 0,
                  contentPadding:
                      const EdgeInsets.only(left: 31, right: 45 - 20, top: 16),
                  title: Text(
                    'Name card',
                    style: Styles.textRegular16(context)
                        .copyWith(color: Colors.white),
                  ),
                  subtitle: Text('Syah Bandi',
                      style: Styles.textMedium20(context)
                          .copyWith(color: Colors.white)),
                  trailing: SvgPicture.asset(Assets.imagesGallery),
                ),
                const Spacer(),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text('0918 8124 0042 8129',
                      style: Styles.textSemiBold20(context)
                          .copyWith(color: Colors.white)),
                ),
                Flexible(
                  child: const SizedBox(
                    height: 12,
                  ),
                ),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text('12/20 - 124',
                      style: Styles.textRegular16(context)
                          .copyWith(color: Colors.white)),
                ),
                Flexible(
                  child: const SizedBox(
                    height: 26,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
