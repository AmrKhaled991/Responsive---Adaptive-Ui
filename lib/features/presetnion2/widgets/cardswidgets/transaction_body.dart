import 'package:flutter/material.dart';
import 'package:flutter_responsive/core/Global_Utils/Styles.dart';

class Transaction_body extends StatelessWidget {
  const Transaction_body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(
      3,
      (index) => Card(
        elevation: 0,
        child: ListTile(
          subtitle: Text('13 Apr, 2022 ', style: Styles.textRegular14(context)),
          title: Text('Cash Withdrawal', style: Styles.textSemiBold16(context)),
          trailing: Text('\$20,129',
              style:
                  Styles.textSemiBold20(context).copyWith(color: Colors.green)),
        ),
      ),
    ));
  }
}
