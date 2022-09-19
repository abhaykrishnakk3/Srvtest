import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class IconText extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;
  const IconText({super.key,required this.text,required this.icon,required this.color});

  @override
  Widget build(BuildContext context) {
      final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Column(children: [
       Container(
                  height: h*0.07,
                  width: w*0.14,
                 decoration: BoxDecoration(color:color,borderRadius: BorderRadius.circular(10)),
                 child: Icon(icon,color: Colors.white,),
                ),
                SizedBox(height: h*0.004,),
                Text("$text",style: TextStyle(fontWeight: FontWeight.bold),)
    ],);
  }
}