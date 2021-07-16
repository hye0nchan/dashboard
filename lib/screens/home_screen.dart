import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:smartfarm_dashboard/config/palette.dart';
import 'package:smartfarm_dashboard/data/data.dart';
import 'package:smartfarm_dashboard/widgets/country_dropdown.dart';
import 'package:smartfarm_dashboard/widgets/custom_app.bar.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SalesData{
  SalesData(this.hour, this.tem);
  final double hour;
  final double tem;
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
  String _country = "Tem";
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: CustomAppBar(),
      body: CustomScrollView
        (physics: ClampingScrollPhysics(),
      slivers: <Widget>[
        _buildHeader(screenHeight),
        _buildPreventionTips(screenHeight),
      ],
      ),
    );
  }
  SliverToBoxAdapter _buildHeader(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Palette.primaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40.0),
            bottomRight: Radius.circular(40.0),
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  "Sensing DATA",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CountryDropdown(
                  countries: ['Tem', 'Hum', 'CO2'],
                  country: _country,
                  onChanged: (val) => setState(() => _country = val),
                ),
              ],
            ),
          ],),
      ),
    );
  }

  SliverToBoxAdapter _buildPreventionTips(double screenHeight){
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                padding: const EdgeInsets.all(30.0),
                child: SfRadialGauge(
                  enableLoadingAnimation: true,
                  animationDuration: 1000,
                  axes: <RadialAxis>[
                    RadialAxis(minimum: 0, maximum: 40,
                    pointers: <GaugePointer>[
                      NeedlePointer(value: 25,
                      enableAnimation: true,)
                    ], ranges: <GaugeRange>[
                        GaugeRange(startValue: 0, endValue: 20, color: Colors.green,),
                        GaugeRange(startValue: 20, endValue: 30, color: Colors.orange,),
                        GaugeRange(startValue: 30, endValue: 40, color: Colors.red,),
                      ], annotations: <GaugeAnnotation>[
                        GaugeAnnotation(
                            widget: Text(
                              '℃',
                              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                            ),
                        positionFactor: 0.8,
                        angle: 90,)
                      ]
                      ,)
                  ],
                ),
            ),
            SfCartesianChart(series: <ChartSeries>[
              LineSeries<SalesData,double>
                (dataSource: _chartData,
                  xValueMapper: (SalesData sales, _)=>sales.hour,
                  yValueMapper: (SalesData sales, _)=>sales.tem)
            ],
            ),
          ],
        ),
      ),
    );
  }
}
