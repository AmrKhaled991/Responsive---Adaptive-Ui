import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Chartpart extends StatefulWidget {
  const Chartpart({
    super.key,
  });

  @override
  State<Chartpart> createState() => _ChartpartState();
}

class _ChartpartState extends State<Chartpart> {
  int section = -1;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AspectRatio(
        aspectRatio: 1,
        child: PieChart(
          PieChartData(
              pieTouchData: PieTouchData(
                enabled: true,
                touchCallback: (p0, p1) {
                  section = p1?.touchedSection?.touchedSectionIndex ?? -1;
                  setState(() {});
                },
              ),
              sectionsSpace: 0,
              sections: [
                PieChartSectionData(
                  showTitle: false,
                  value: 40,
                  radius: section == 0 ? 60 : 40,
                  color: Color(0xFF208BC7),
                ),
                PieChartSectionData(
                  showTitle: false,
                  radius: section == 1 ? 60 : 40,
                  value: 25,
                  color: Color(0xFF4DB7F2),
                ),
                PieChartSectionData(
                  showTitle: false,
                  radius: section == 2 ? 60 : 40,
                  value: 20,
                  color: Color(0xFF064060),
                ),
                PieChartSectionData(
                  radius: section == 3 ? 60 : 40,
                  showTitle: false,
                  value: 22,
                  color: Color(0xFFE2DECD),
                ),
              ]),
        ),
      ),
    );
  }
}
