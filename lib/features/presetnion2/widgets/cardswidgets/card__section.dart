import 'package:flutter/material.dart';
import 'package:flutter_responsive/core/Global_Utils/Styles.dart';
import 'package:flutter_responsive/core/widgets/CustomBorderCont.dart';
import 'package:flutter_responsive/features/presetnion2/widgets/cardswidgets/scrolllincards_sections.dart';
import 'package:flutter_responsive/features/presetnion2/widgets/cardswidgets/transactions.dart';

class Card_Section extends StatelessWidget {
  const Card_Section({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomBorderCont(
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('My card', style: Styles.textMedium16(context)),
          const SizedBox(
            height: 20,
          ),
          const AllCards_Section(),
          const Divider(
            height: 40,
          ),
          const Transactions()
        ],
      ),
      padding: 24,
    );
  }
}
