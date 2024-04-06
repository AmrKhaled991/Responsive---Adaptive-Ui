// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_responsive/features/models/allexpensesmodel.dart';
import 'package:flutter_responsive/features/presetnion2/widgets/allexpresswidgets/CustomexpensesItem.dart';

class Allexpensesbody extends StatefulWidget {
  const Allexpensesbody({super.key});

  static const List<Allexpensesmodel> listofexpes = [
    Allexpensesmodel(
      name: 'Balance',
      amount: r'$20,129',
      date: 'April 2022',
    ),
    Allexpensesmodel(
      name: 'Income',
      amount: r'$20,129',
      date: 'April 2022',
    ),
    Allexpensesmodel(
      name: 'Expenses',
      amount: r'$20,129',
      date: 'April 2022',
    ),
  ];

  @override
  State<Allexpensesbody> createState() => _AllexpensesbodyState();
}

class _AllexpensesbodyState extends State<Allexpensesbody> {
  int selecteditem = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
        children: Allexpensesbody.listofexpes.asMap().entries.map((e) {
      int index = e.key;
      var value = e.value;
      switch (index) {
        case 0:
          return Expanded(
              child: GestureDetector(
            onTap: () {
              if (selecteditem == index) return;
              selecteditem = index;
              setState(() {});
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: CustomExpensesItem(
                allexpensesmodel: value,
                condion: (selecteditem == index),
              ),
            ),
          ));
        case 1:
          return Expanded(
              child: GestureDetector(
            onTap: () {
              if (selecteditem == index) return;
              selecteditem = index;
              setState(() {});
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: CustomExpensesItem(
                allexpensesmodel: value,
                condion: (selecteditem == index),
              ),
            ),
          ));
        case 2:
          return Expanded(
              child: GestureDetector(
                  onTap: () {
                    if (selecteditem == index) return;
                    selecteditem = index;
                    setState(() {});
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: CustomExpensesItem(
                      allexpensesmodel: value,
                      condion: (selecteditem == index),
                    ),
                  )));
      }
      return Container();
    }).toList());
  }
}
