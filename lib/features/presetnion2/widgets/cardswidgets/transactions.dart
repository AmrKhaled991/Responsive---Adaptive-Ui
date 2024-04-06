import 'package:flutter/material.dart';
import 'package:flutter_responsive/core/Global_Utils/Styles.dart';
import 'package:flutter_responsive/core/constent.dart';

import 'transaction_body.dart';
import 'transactions_header.dart';

class Transactions extends StatelessWidget {
  const Transactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Transactions_header(),
        const SizedBox(
          height: 20,
        ),
        Text('13 April 2022',
            style: Styles.textMedium16(context).copyWith(color: gray)),
        const SizedBox(
          height: 16,
        ),
        const Transaction_body()
      ],
    );
  }
}
