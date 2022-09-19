import 'package:flutter/material.dart';

class BottomCard extends StatelessWidget {
  const BottomCard({super.key});

  @override
  Widget build(BuildContext context) {
     final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return  Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(16),
              height: h*0.15,
             width: double.infinity,
             decoration: BoxDecoration(color: const Color.fromARGB(255, 237, 233, 233),borderRadius: BorderRadius.circular(10)),
             child: Column(children: [
               Row(children: [
                const Text("Visit",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                SizedBox(width: w*0.08,),
                Container(
                  height: h*0.04,
                  width: w*0.7,
                decoration: BoxDecoration(color: const Color.fromARGB(255, 223, 214, 214),borderRadius: BorderRadius.circular(5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:const [
                  Text("Previous Visit :",style: TextStyle(fontWeight: FontWeight.w500),),
                   Text("Octobar.30 2021,3.00 PM",style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),)
                ]),
                
                )
               ],),
               SizedBox(height: h*0.01,),
               Container(
                padding: const EdgeInsets.all(10),
                height: h*0.07,
               
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
                
                child: Row(children: [
                  Container(
                    height: h*0.07,
                    width: w*0.23,
                    color: Colors.white,
                    child: Column(children: [
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Text("Next Visit"),
                        Text(":"),
                      ],),
                      SizedBox(height: h*0.002,),
                       Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Text("Items"),
                        Text(":")
                      ],)
                    ]),
                  ),
                 
                ]),
               )
             ]),
            );
  }
}