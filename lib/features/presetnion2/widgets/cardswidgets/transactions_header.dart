import 'package:flutter/material.dart';
import 'package:flutter_responsive/core/Global_Utils/Styles.dart';

class Transactions_header extends StatelessWidget {
  const Transactions_header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Transaction History', style: Styles.textSemiBold20(context)),
        Spacer(),
        Text('See all', style: Styles.textMedium16(context))
      ],
    );
  }
}
