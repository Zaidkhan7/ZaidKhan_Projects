import 'package:emicalculator/widgets/chart.dart';
import 'package:emicalculator/widgets/output.dart';
import 'package:emicalculator/widgets/slider.dart';
import 'package:emicalculator/widgets/textbox.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class EmiCalculator extends StatefulWidget {
  const EmiCalculator({Key? key}) : super(key: key);

  @override
  State<EmiCalculator> createState() => _EmiCalculatorState();
}

class _EmiCalculatorState extends State<EmiCalculator> {
  int _value = 1; // with in dart file
  
  
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  TextEditingController t3 = TextEditingController();
 
 
  double _loan=0.0;
  int _totalinterest = 0;
 late Map<String, double> dataMap = {
    
    "Total Principle Amount": double.parse(t1.text),
     "Total interest": _totalinterest.toDouble() ,
     
     };
  double _emi = 0.0;
  takeSliderValue(int value) {
    _value = value; // Scope Increase
    print("Rec Value From Slider $value");

    t3.text = _value.toString();
    setState(() {});
  }

  computeValue(double emi ) {
    _emi = emi;
    print("taking values from parent");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    TextBox tb =
        TextBox(label: 'Tenure', iconData: Icons.money_rounded, tc: t3);
    tb.setFunction(takeSliderValue);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextBox(label: 'Loan Amount', iconData: Icons.money, tc: t1),
            TextBox(label: 'ROI', iconData: Icons.monetization_on, tc: t2),
            tb,
            MySlider(takeSliderValue, _value),
            Output(computeValue, t1.text, t2.text, t3.text, _emi),
            SizedBox(height: 40),
            
              
              
                Padding(
                padding: EdgeInsets.all(30),
                 child:
                Text(
                  'EMI $_emi',
                  style: TextStyle(fontSize: 30),
                ),),
              
                Padding(
                  padding: EdgeInsets.only(left: 80),
                  child: PieChart(dataMap: dataMap))
              
           ]
          
        ),
      ),
      appBar: AppBar(
        title: Text('Emi Calc'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
    );
  }
}
