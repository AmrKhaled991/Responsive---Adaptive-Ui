// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

import 'package:flutter_responsive/features/presetnion2/paymentcard.dart';

class CustomPageViewcard extends StatelessWidget {
  PageController pageController;
  CustomPageViewcard({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView.builder(
        controller: pageController,
        itemCount: 3,
        itemBuilder: (context, index) => Paymentcard());
  }
}
