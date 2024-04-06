import 'package:flutter/material.dart';
import 'package:flutter_responsive/core/widgets/CustomBorderCont.dart';
import 'package:flutter_responsive/features/presetnion2/widgets/allexpresswidgets/AllepensesHeader.dart';
import 'package:flutter_responsive/features/presetnion2/widgets/allexpresswidgets/Allexpensesbody.dart';
import 'package:flutter_responsive/features/presetnion2/widgets/allexpresswidgets/QuickInvoice.dart';

class Allexpenses extends StatelessWidget {
  const Allexpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomBorderCont(
          widget: Column(
            children: [
              CustomHeader_dropdwon(
                headertext: 'All Expenses',
              ),
              const SizedBox(
                height: 16,
              ),
              const Allexpensesbody(),
            ],
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const QuickInvoice()
      ],
    );
  }
}
