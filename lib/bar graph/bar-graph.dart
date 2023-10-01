import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:project1/bar%20graph/bar_data.dart';

class BarGraph extends StatelessWidget {
  final List weeklySummery;
  const BarGraph({super.key,required this.weeklySummery});

  @override
  Widget build(BuildContext context) {
    //innitialize bar data
    BarData myBarData = BarData(
      sunAmount: weeklySummery[0], 
      monAmount: weeklySummery[1], 
      tueAmount: weeklySummery[2], 
      wedAmount: weeklySummery[3], 
      thurAmount: weeklySummery[4], 
      friAmount: weeklySummery[5], 
      satAmount: weeklySummery[6],
      a: weeklySummery[7],
      b: weeklySummery[8],
      c: weeklySummery[9],
      d: weeklySummery[10],
      );
      myBarData.initializeBarData();
    return BarChart(
      BarChartData(
        maxY: 100,
        minY: 0,
        gridData: FlGridData(show: false),
        borderData: FlBorderData(show: false),
        titlesData: FlTitlesData(
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
        barGroups: myBarData.barData.map((data) => BarChartGroupData(
          x: data.x,
          barRods: [
            BarChartRodData(
              toY: data.y,
              color: Color.fromARGB(255, 12, 91, 200),
              width: 10,
              borderRadius: BorderRadius.circular(4),
              backDrawRodData: BackgroundBarChartRodData(
                show: true,
                toY: 100,
                color: Colors.grey.shade200
              )
              )]
          ),
          
          ).toList(),          
      )
      
    );
  }
}