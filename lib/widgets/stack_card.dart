import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nellikka/widgets/icon_text.dart';

class StackCard extends StatelessWidget {
  const StackCard({super.key});

  @override
  Widget build(BuildContext context) {
     final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return   Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(15),
            height: h*0.2,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color.fromARGB(255, 220, 223, 220,)),
            child: Column(children: [
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("My Balance",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                Text("?1500.00",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
               ],),
               SizedBox(height: h*0.007,),
               Divider(
               thickness: 2,
               ),
               SizedBox(
                height: h*0.008,
               ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                IconText(text: "Invoice",icon: Icons.receipt_long_sharp,color: Colors.blue,),
              IconText(text: "Receipts",icon: Icons.receipt_long_sharp,color: Colors.orange,),
              IconText(text: "Statement",icon: Icons.receipt_long_sharp,color: Colors.red,),
                IconText(text: "Visits",icon: Icons.receipt_long_sharp,color: Color.fromARGB(255, 83, 175, 166),),
              ],)
            ],),
          );
  }
}