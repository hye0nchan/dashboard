import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:smartfarm_dashboard/config/palette.dart';
import 'package:smartfarm_dashboard/config/styles.dart';
import 'package:smartfarm_dashboard/widgets/custom_app.bar.dart';
import 'package:smartfarm_dashboard/widgets/stats_grid.dart';

 class StatsScreen extends StatefulWidget {
  @override
  _StatsScreenState createState() => _StatsScreenState();
}

class _StatsScreenState extends State<StatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.primaryColor,
      appBar: CustomAppBar(),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          _buildHeader(),
          _buildRegionTabBar(),
          _buildStatsTabBar(),
          SliverPadding(padding: const EdgeInsets.symmetric(horizontal: 10.0),
            sliver: SliverToBoxAdapter(
            child: StatsGrid(),
          ))
        ],
      ),
    );
  }
  
  SliverPadding _buildHeader(){
    return SliverPadding(padding: const EdgeInsets.all(20.0),
    sliver: SliverToBoxAdapter(
      child: Text(
      'Statistics',
        style: const TextStyle(
            color: Colors.white,
        fontSize: 25.0,
        fontWeight: FontWeight.bold),
      ),
    ),
    );
  }

  SliverToBoxAdapter _buildRegionTabBar() {
    return SliverToBoxAdapter(
      child: DefaultTabController(length: 3,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20.0),
        height: 50.0,
        decoration: BoxDecoration(
          color: Colors.white24,
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: TabBar(
          indicator: BubbleTabIndicator(
            tabBarIndicatorSize: TabBarIndicatorSize.tab,
            indicatorHeight: 40.0,
            indicatorColor: Colors.white,
          ),
          labelStyle: Styles.tabTextStyle,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.white,
          tabs: <Widget>[
            Text("Temperature",style: const TextStyle(fontSize: 14.8),),
            Text("Humidity"),
            Text("CO2"),
          ],
          onTap: (index) {},
        ),
      ),
      ),
    );
  }

  SliverPadding _buildStatsTabBar() {
    return SliverPadding(padding: const EdgeInsets.all(20.0),
      sliver: SliverToBoxAdapter(
        child: DefaultTabController(
          length: 5,
          child: TabBar(
            indicatorColor: Colors.transparent,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white60,
            tabs: <Widget>[
              Text("1 HOUR",textAlign: TextAlign.center,),
              Text("3 HOUR",textAlign: TextAlign.center,),
              Text("12 HOUR",textAlign: TextAlign.center,),
              Text("1\nDAY",textAlign: TextAlign.center,),
              Text("2 DAYS",textAlign: TextAlign.center,),
            ],
          ),
        ),
      ),
    );
  }
}
