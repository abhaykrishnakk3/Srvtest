import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RoundIconText extends StatelessWidget {
  final String text;
  const RoundIconText({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
      Icon(Icons.add_circle_outline,color: Colors.blue,size: 45,),
      Text("$text",style: TextStyle(fontSize: 12),)
    ],);
  }
}