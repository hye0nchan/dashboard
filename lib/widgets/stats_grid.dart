import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SalesData{
  SalesData(this.hour, this.tem);
  final double hour;
  final double tem;
}

class StatsGrid extends StatefulWidget {
  @override
  _StatsGridState createState() => _StatsGridState();
}

class _StatsGridState extends State<StatsGrid> {
  List<SalesData> _chartData;

  @override
  void initState(){
    _chartData = getChartData();
    super.initState();
  }

  List<SalesData> getChartData(){
    final List<SalesData> chartData = [
      SalesData(0, 1),SalesData(1, 2),SalesData(2, 3),SalesData(3, 4),SalesData(4, 3),
    ];
    return chartData;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
    height: MediaQuery.of(context).size.height*0.4,
      color: Colors.white,
      child:
      Container(
        padding: const EdgeInsets.all(20.0),
        child: SfCartesianChart(
          title: ChartTitle(
            text:"Temperature Chart",
            textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
          ),
          legend: Legend(isVisible: true,
            position: LegendPosition.bottom,),
          series: <ChartSeries>[
            LineSeries<SalesData,double>
              (
                name: "Temperature",
                dataSource: _chartData,
                xValueMapper: (SalesData sales, _)=>sales.hour,
                yValueMapper: (SalesData sales, _)=>sales.tem,
                dataLabelSettings: DataLabelSettings(isVisible: true))
          ],
          primaryXAxis: NumericAxis(edgeLabelPlacement: EdgeLabelPlacement.shift),
        ),
      ),
    );
  }
}
