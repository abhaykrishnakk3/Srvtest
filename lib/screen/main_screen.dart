import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:nellikka/screen/home_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
     final h = MediaQuery.of(context).size.height;
   // final w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: const HomeScreen(),
      
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        
        height: 60,
        index: 2,
        items:const <Widget>[
          Icon(Icons.add, size: 30),
          Icon(Icons.list, size: 30),
          Icon(Icons.home, size: 40),
          Icon(Icons.location_off_outlined, size: 30),
          Icon(Icons.call, size: 30),
        ],
        onTap: (index) {
         
        },
      ),
    );
  }
}
