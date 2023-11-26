import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get411_ass1/classes.dart';
import 'package:get411_ass1/main.dart';

class BarGraph extends StatelessWidget {
  final List list;
  const BarGraph({
    super.key,
    required this.list,
  });

  @override
  Widget build(BuildContext context) {
    BarData barData = BarData(
      first: list[0],
      second: list[1],
      third: list[2],
      fourth: list[3],
      fifth: list[4],
    );
    barData.initializeBarData();
    return BarChart(
      BarChartData(
        minY: 0,
        maxY: 100,
        barGroups: barData.barData
            .map((data) => BarChartGroupData(
                x: data.x, barRods: [BarChartRodData(toY: data.y)]))
            .toList(),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: BarGraph(
            list: y_axis,
          )),
    );
  }
}
