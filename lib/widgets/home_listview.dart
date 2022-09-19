import 'package:flutter/cupertino.dart';

class ListviewHome extends StatelessWidget {
  const ListviewHome({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: h * 0.01,
        width: w * 0.9,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage('assets/1631529961848.jpg'),
                fit: BoxFit.cover)),
      ),
    );
  }
}
