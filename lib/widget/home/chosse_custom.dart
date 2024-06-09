import 'package:flutter/material.dart';

class CustomChossing extends StatelessWidget {
  const CustomChossing({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black12, borderRadius: BorderRadius.circular(10)),
      width: 400,
      height: 40,
      child: Row(children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 4),
              height: 30,
              width: 180,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: const Text(
                "Cities",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        InkWell(
          onTap: () {},
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 4),
                height: 30,
                width: 180,
                decoration: BoxDecoration(
                    //  color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  "Devoces",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
