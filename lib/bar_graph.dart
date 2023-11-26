import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarGraph extends StatelessWidget {
  const BarGraph({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(minY: 100, maxY: 0),
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
    return const Scaffold(
      body: SizedBox(child: BarGraph()),
    );
  }
}
