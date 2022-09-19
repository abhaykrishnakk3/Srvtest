import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nellikka/screen/main_screen.dart';
import 'package:nellikka/screen/mobile_number_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    nextscreen(context);
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/Screenshot 2022-09-17 172031.png'),
                fit: BoxFit.cover)),
      ),
    );
  }

  Future<void> nextscreen(BuildContext context)async{
   Timer(Duration(seconds: 3), (){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx){
      return LoginScreen();
    }));
   });
  }
}
