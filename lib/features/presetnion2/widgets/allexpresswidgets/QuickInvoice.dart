import 'package:flutter/material.dart';
import 'package:flutter_responsive/core/widgets/CustomBorderCont.dart';

import 'latest__transaction.dart';
import 'quick_invioc_form.dart';
import 'quick_invioce_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBorderCont(
      padding: 24,
      widget: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvioceHeader(),
          SizedBox(
            height: 14,
          ),
          Latest_Transaction(),
          Divider(
            height: 48,
          ),
          QuickInviocForm()
        ],
      ),
    );
  }
}
