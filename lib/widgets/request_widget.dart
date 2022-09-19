import 'package:flutter/material.dart';

class RequestCard extends StatelessWidget {
  const RequestCard({Key? key, required this.icon, required this.name})
      : super(key: key);
  final IconData icon;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(14),
          ),
          child: Icon(icon),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: const TextStyle(color: Colors.blue),
        )
      ],
    );
  }
}
