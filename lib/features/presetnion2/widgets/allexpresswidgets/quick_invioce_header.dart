import 'package:flutter/material.dart';
import 'package:flutter_responsive/core/Global_Utils/Styles.dart';
import 'package:flutter_responsive/core/constent.dart';

class QuickInvioceHeader extends StatelessWidget {
  const QuickInvioceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Quick Invoice', style: Styles.textSemiBold16(context)),
        Container(
          width: 48,
          height: 48,
          decoration: const ShapeDecoration(
            color: Color(0xFFFAFAFA),
            shape: OvalBorder(),
          ),
          child: const Center(
              child: Icon(
            Icons.add,
            color: babeblue,
          )),
        )
      ],
    );
  }
}
