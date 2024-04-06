import 'package:flutter/material.dart';
import 'package:flutter_responsive/core/Global_Utils/App_assets.dart';
import 'package:flutter_responsive/core/Global_Utils/Styles.dart';
import 'package:flutter_responsive/features/models/allexpensesmodel.dart';
import 'package:flutter_svg/svg.dart';

class AllexpensesItme extends StatelessWidget {
  Allexpensesmodel allexpensesmodel;
  AllexpensesItme({
    Key? key,
    required this.allexpensesmodel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: 60,
                  ),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Container(
                      decoration: const ShapeDecoration(
                        color: Color(0xFFFAFAFA),
                        shape: OvalBorder(),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          Assets.imagesUnselectedWallet,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Transform.rotate(
                angle: 4 * 1.57079633,
                child: Icon(Icons.arrow_forward_ios_rounded),
              )
            ],
          ),
          const SizedBox(
            height: 34,
          ),
          FittedBox(
              child: Text(allexpensesmodel.name,
                  style: Styles.textSemiBold16(context))),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
            child: Text(
              allexpensesmodel.date,
              style: Styles.textRegular14(context),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
            child: Text(
              allexpensesmodel.amount,
              style: Styles.textSemiBold24(context),
            ),
          ),
        ],
      ),
    );
  }
}
