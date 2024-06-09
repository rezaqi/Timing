import 'package:flutter/material.dart';

class CustomCircle extends StatelessWidget {
  const CustomCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
        //alignment: Alignment.centerLeft,
        children: [
          Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 79, 78, 78),
                borderRadius: BorderRadius.circular(200)),
            height: 250,
            width: 250,
          ),
          Positioned(
            left: -10,
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 245, 244, 244),
                  borderRadius: BorderRadius.circular(200)),
              height: 230,
              width: 230,
            ),
          ),
          const Positioned(
            bottom: 70,
            left: 90,
            child: Column(
              children: [
                Text(
                  "HEATING",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "22",
                  style: TextStyle(
                    color: Colors.black12,
                    fontSize: 60,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.brightness_3_outlined,
                      color: Colors.black26,
                    ),
                    Text(
                      "Night",
                      style: TextStyle(
                        color: Colors.black26,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ]);
  }
}
