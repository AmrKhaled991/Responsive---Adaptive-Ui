// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_responsive/core/constent.dart';

import 'package:flutter_responsive/features/presetnion2/widgets/allexpresswidgets/QuickInviocFormFields.dart';

import 'custom_textbottum.dart';

class QuickInviocForm extends StatelessWidget {
  const QuickInviocForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: QuickInviocFormFields(
                  hintext: 'Type customer name', title: 'Customer name'),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: QuickInviocFormFields(
                  hintext: 'Type Customer Email', title: ' customer email'),
            ),
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: QuickInviocFormFields(
                  hintext: 'Type Item name', title: ' customer name'),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
                child:
                    QuickInviocFormFields(hintext: 'USD', title: 'Item mount')),
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: CustomTextbottum(
                text: 'Add more details',
                backgroundcolor: Colors.white,
              ),
            ),
            const SizedBox(
              width: 24,
            ),
            Expanded(
              child: CustomTextbottum(
                text: 'Send Money',
                backgroundcolor: babeblue,
              ),
            ),
          ],
        )
      ],
    );
  }
}
