import 'package:flutter/material.dart';
import 'card__section.dart';
import 'income_section.dart';

class Cards_Incom extends StatelessWidget {
  const Cards_Incom({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Card_Section(),
        SizedBox(
          height: 24,
        ),
        Income_section()
      ],
    );
  }
}
