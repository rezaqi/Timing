import 'package:flutter/material.dart';

import '../widget/home/thermosrtat/circle.dart';

class Thermostat extends StatelessWidget {
  const Thermostat({super.key});
  static const String themosrtat = '/page2';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 244, 244),
      appBar: AppBar(
        actions: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(width: 1),
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)),
            padding: EdgeInsets.symmetric(horizontal: 10),
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: InkWell(
              onTap: () {},
              child: Icon(
                Icons.settings,
                color: Colors.grey,
                size: 25,
              ),
            ),
          )
        ],
        leading: Icon(
          Icons.arrow_back_ios_new_outlined,
          color: Colors.black,
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 245, 244, 244),
        title: const Text(
          "Thermosrtat",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomCircle(),
            const SizedBox(
              height: 100,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 214, 213, 213),
                  borderRadius: BorderRadius.circular(10)),
              height: 40,
              width: 300,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text("Qaro")),
                  Icon(Icons.keyboard_arrow_down_sharp)
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20)),
                  height: 200,
                  width: 170,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.air_sharp,
                        color: Colors.blueAccent,
                        size: 45,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Air 49%",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black38),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20)),
                  height: 200,
                  width: 170,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.cloudy_snowing,
                        color: Colors.blueAccent,
                        size: 45,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "-10\u00B0",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black38),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.sunny,
                  size: 40,
                  color: Colors.yellowAccent,
                ),
                Icon(
                  Icons.sunny_snowing,
                  size: 40,
                  color: Colors.blue[200],
                ),
                Icon(
                  Icons.spa_rounded,
                  size: 40,
                  color: Colors.greenAccent,
                ),
                Icon(
                  Icons.flash_on_outlined,
                  size: 40,
                  color: Color.fromARGB(255, 0, 52, 95),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
