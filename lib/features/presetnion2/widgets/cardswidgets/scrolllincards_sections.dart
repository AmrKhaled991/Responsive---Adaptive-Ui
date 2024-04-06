import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_responsive/features/presetnion2/widgets/cardswidgets/CustomPageViewcard.dart';
import 'package:flutter_responsive/features/presetnion2/widgets/cardswidgets/custom_idcator.dart';

class AllCards_Section extends StatefulWidget {
  const AllCards_Section({
    super.key,
  });

  @override
  State<AllCards_Section> createState() => _AllCards_SectionState();
}

class _AllCards_SectionState extends State<AllCards_Section> {
  late PageController pageController;
  int page = 0;
  @override
  void initState() {
    pageController = PageController();

    pageController.addListener(() {
      page = pageController.page!.round();
      setState(() {});
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomPageViewcard(
          pageController: pageController,
        ),
        const SizedBox(
          height: 19,
        ),
        CustomIdcator(
          page: page,
        ),
      ],
    );
  }
}
