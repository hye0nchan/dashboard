import 'package:flutter/material.dart';
import 'package:smartfarm_dashboard/config/palette.dart';
import 'package:smartfarm_dashboard/widgets/custom_app.bar.dart';

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
}
