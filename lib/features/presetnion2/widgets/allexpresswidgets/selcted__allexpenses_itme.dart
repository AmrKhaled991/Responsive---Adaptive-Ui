import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_responsive/core/Global_Utils/App_assets.dart';
import 'package:flutter_responsive/core/Global_Utils/Styles.dart';
import 'package:flutter_responsive/core/constent.dart';
import 'package:flutter_responsive/features/models/allexpensesmodel.dart';
import 'package:flutter_svg/svg.dart';

class selcted_AllexpensesItme extends StatelessWidget {
  Allexpensesmodel allexpensesmodel;
  selcted_AllexpensesItme({
    Key? key,
    required this.allexpensesmodel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: babeblue,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 60),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Container(
                      decoration: const ShapeDecoration(
                        shape: OvalBorder(),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          Assets.imagesSelectedWallet,
                          colorFilter: const ColorFilter.mode(
                              Colors.white, BlendMode.srcIn),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white,
              )
            ],
          ),
          const SizedBox(
            height: 34,
          ),
          FittedBox(
            child: Text(allexpensesmodel.name,
                style: Styles.textSemiBold16(context)
                    .copyWith(color: Colors.white)),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
            child: Text(
              allexpensesmodel.date,
              style:
                  Styles.textRegular14(context).copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
            child: Text(
              allexpensesmodel.amount,
              style:
                  Styles.textSemiBold24(context).copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
