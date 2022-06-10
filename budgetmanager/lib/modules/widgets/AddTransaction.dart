import 'package:flutter/material.dart';

class AddTransaction extends StatelessWidget {
  const AddTransaction({ Key? key }) : super(key: key);

  //List<DropdownMenuItem<dynamic>> list =['Shopping' , 'Fees' , 'Bill' , 'Personal' , 'Donation' , 'Transfer'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        
        TextField(

          decoration:InputDecoration(label: Text("Enter Amount") ) ,

        )
      ],
      
    );
  }
}