import 'package:flutter/material.dart';

class CustomCart extends StatelessWidget {
  const CustomCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 130,
      width: 400,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              colors: [Colors.deepPurple, Colors.pinkAccent]),
          borderRadius: BorderRadius.circular(20)),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "My Location",
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                "Monteral",
                style: TextStyle(fontSize: 17, color: Colors.white60),
              ),
              Icon(Icons.warning_amber_rounded, color: Colors.white),
              Row(
                children: [
                  Icon(Icons.cloudy_snowing, color: Colors.white),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    "Rainy",
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  )
                ],
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "-10\u00B0",
                    style: TextStyle(fontSize: 50, color: Colors.white),
                  ),
                  Text(
                    "H:2\u00B0    L:12\u00B0",
                    style: TextStyle(fontSize: 15, color: Colors.white60),
                  )
                ]),
          )
        ],
      ),
    );
  }
}
