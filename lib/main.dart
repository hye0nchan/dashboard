import 'package:flutter/material.dart';
import 'package:smartfarm_dashboard/screens/bottom_nav_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dashboard',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor:Colors.white
      ),
      home: BottomNavScreen(),
    );
  }
}
