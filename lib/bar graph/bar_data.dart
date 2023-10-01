import 'indiviadual_bar.dart';

class BarData{
  final double sunAmount;
  final double monAmount;
  final double tueAmount;
  final double wedAmount;
  final double thurAmount;
  final double friAmount;
  final double satAmount;
  final double a;
  final double b;
  final double c;
  final double d;
  BarData({
    required this.sunAmount,
    required this.monAmount,
    required this.tueAmount,
    required this.wedAmount,
    required this.thurAmount,
    required this.friAmount,
    required this.satAmount,
    required this.a,
    required this.b,
    required this.c,
    required this.d,
  });
  List<IndividualBar> barData =[];

  void initializeBarData(){
  barData =[
    //sun
    IndividualBar(x: 0, y: sunAmount),
    //mon
    IndividualBar(x: 1, y: monAmount),
    //tue
    IndividualBar(x: 2, y: tueAmount),
    //wed
    IndividualBar(x: 3, y: wedAmount),
    //thur
    IndividualBar(x: 4, y: thurAmount),
    //fri
    IndividualBar(x: 5, y: friAmount),
    //sat
    IndividualBar(x: 6, y: satAmount),
    IndividualBar(x: 6, y: a),
    IndividualBar(x: 6, y: b),
    IndividualBar(x: 6, y: c),
    IndividualBar(x: 6, y: d),
  ];
  }
}