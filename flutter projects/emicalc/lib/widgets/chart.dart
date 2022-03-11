import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class Chart extends StatelessWidget {
   Chart({ Key? key }) : super(key: key);

Map<String ,double> datamap = {
   " Principle Amount" : 2.0,
   "Total Interest" : 2.0
  };
  @override
  Widget build(BuildContext context) {
    return PieChart(dataMap:datamap );
  }
}