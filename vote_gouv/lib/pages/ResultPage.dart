import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_charts/charts.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  late List<GDPData> _chartData;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SfCircularChart(
          title: ChartTitle(text: 'Résultats des présidentielles'),
          legend: Legend(
              isVisible: true,
              overflowMode: LegendItemOverflowMode.wrap,
              position: LegendPosition.bottom),
          tooltipBehavior: _tooltipBehavior,
          series: <CircularSeries>[
            PieSeries<GDPData, String>(
                dataSource: _chartData,
                xValueMapper: (GDPData data, _) => data.continent,
                yValueMapper: (GDPData data, _) => data.gdb,
                dataLabelSettings: const DataLabelSettings(isVisible: true),
                enableTooltip: true)
          ]),
    ));
  }

  List<GDPData> getChartData() {
    final List<GDPData> chartData = [
      GDPData('Emmanuel MACRON', 20.07),
      GDPData('Marine LE PEN', 16.69),
      GDPData('Jean-Luc MÉLENCHON', 15.82),
      GDPData('Éric ZEMMOUR', 5.10),
      GDPData('Valérie PÉCRESSE', 3.44),
      GDPData('Yannick JADOT', 3.34),
      GDPData('Jean LASSALLE', 2.26),
      GDPData('Fabien ROUSSEL', 1.65),
      GDPData('Nicolas DUPONT-AIGNAN	', 1.49),
      GDPData('Anne HIDALGO', 1.26),
      GDPData('Philippe POUTOU', 0.55),
      GDPData(' Nathalie ARTHAUD', 0.40),
    ];
    return chartData;
  }
}

// List<double> getPourcentage() {
//   final List<double> Pourcentage = [

//   ];
//   return Pourcentage;
// }

class GDPData {
  GDPData(this.continent, this.gdb);
  final String continent;
  final double gdb;
}
