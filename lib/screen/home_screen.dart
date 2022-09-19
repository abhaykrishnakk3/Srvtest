import 'package:flutter/material.dart';
import 'package:nellikka/widgets/bottom_card.dart';
import 'package:nellikka/widgets/home_listview.dart';
import 'package:nellikka/widgets/request_widget.dart';
import 'package:nellikka/widgets/roundicon_text.dart';
import 'package:nellikka/widgets/stack_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 69, 163, 72),
        leading: const Icon(Icons.menu),
        actions: [
          Row(
            children: [
              const Icon(
                Icons.add_box_rounded,
                size: 30,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
              const Text(
                "NELLIKKA",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
              ),
              SizedBox(
                width: w * 0.03,
              )
            ],
          )
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 16, top: 5),
                    height: h * 0.4,
                    width: double.infinity,
                    color: const Color.fromARGB(255, 69, 163, 72),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Hello,Akhilesh SRV",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: h * 0.005,
                          ),
                          const Text(
                            "NL02547584, TMC1 Kuppam",
                            style: TextStyle(
                                color: Color.fromARGB(255, 195, 194, 194)),
                          ),
                          SizedBox(
                            height: h * 0.02,
                          ),
                          SizedBox(
                            height: h * 0.18,
                            width: w * 1,
                            child: ListView.builder(
                                padding: EdgeInsets.zero,
                                scrollDirection: Axis.horizontal,
                                itemCount: 4,
                                itemBuilder: (ctx, index) {
                                  return const ListviewHome();
                                }),
                          )
                        ]),
                  ),
                  Container(
                    height: h * 0.14,
                    width: double.infinity,
                    color: Colors.white,
                  )
                ],
              ),
              Positioned(
                  top: h * 0.37 - (w * .2),
                  left: 0,
                  right: 0,
                  child: const StackCard())
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                RequestCard(
                  icon: Icons.request_page,
                  name: 'Request',
                ),
                RequestCard(icon: Icons.delete, name: 'Food waste'),
                RequestCard(
                  icon: Icons.phone,
                  name: 'Phone Book',
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                RequestCard(
                  icon: Icons.computer,
                  name: 'Complaints',
                ),
                RequestCard(icon: Icons.delete, name: 'Food waste'),
                RequestCard(
                  icon: Icons.phone,
                  name: 'Phone Book',
                ),
              ],
            ),
            const BottomCard()
          ],
        ),
      )),
    );
  }
}
