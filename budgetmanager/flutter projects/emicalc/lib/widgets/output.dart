import 'package:flutter/material.dart';

class Output extends StatelessWidget {
  Function fn;
  String loanv, roiv, tenurev;
  double value;

  Output(this.fn , this.loanv , this.roiv , this.tenurev , this.value);

// _compute(){
  //     int loanAmount = int.parse(t1.text);
  //     int roi = int.parse(t2.text);
  //     int tenure = int.parse(t3.text);
  //     double monthlyPr = loanAmount / tenure;
  //     double monthlyROI = (loanAmount * (roi/100))/tenure;
  //     _emi = monthlyPr + monthlyROI;
  //     setState(() {
        
  //     });

  // }
    calculateAnswer()
  {
      int loanAmount = int.parse(loanv);
      int roi = int.parse(roiv);
      int tenure = int.parse(tenurev);
      double monthlyPr = loanAmount / tenure;
      double monthlyROI = (loanAmount * (roi/100))/tenure;
      double emi = monthlyPr + monthlyROI;
      fn(emi);

  }

  @override
  Widget build(BuildContext context) {
    
    return ElevatedButton(
      
      
        onPressed: calculateAnswer,
        child: Text(
          'Compute',
          style: TextStyle(fontSize: 30),
        )
        );
  }
}
