import 'package:flutter/material.dart';

class BottomNB extends StatefulWidget {
  const BottomNB({super.key});

  @override
  State<BottomNB> createState() => _BottomNBState();
}

class _BottomNBState extends State<BottomNB> {
  int tap = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;
    return Container(
      color: Colors.white,
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                tap = 0;
              });
            },
            child: Container(
                height: h,
                width: w / 3,
                decoration: BoxDecoration(
                    color: tap == 0 ? Colors.white : Colors.blueGrey,
                    borderRadius: BorderRadius.only(
                        topRight:
                            tap == 1 ? Radius.circular(50) : Radius.circular(0),
                        bottomRight: tap == 1
                            ? Radius.circular(50)
                            : Radius.circular(0))),
                child: const Icon(Icons.home)),
          ),
          InkWell(
            onTap: () {
              setState(() {
                tap = 1;
              });
            },
            child: Container(
                height: h,
                width: w / 3,
                decoration: BoxDecoration(
                    color: tap == 1 ? Colors.white : Colors.blueGrey,
                    borderRadius: BorderRadius.only(
                      bottomLeft:
                          tap == 0 ? Radius.circular(50) : Radius.circular(0),
                      bottomRight:
                          tap == 2 ? Radius.circular(50) : Radius.circular(0),
                      topLeft:
                          tap == 0 ? Radius.circular(50) : Radius.circular(0),
                      topRight:
                          tap == 2 ? Radius.circular(50) : Radius.circular(0),
                    )),
                child: Icon(Icons.search)),
          ),
          InkWell(
            onTap: () {
              setState(() {
                tap = 2;
              });
            },
            child: Container(
                width: w / 3,
                height: h,
                decoration: BoxDecoration(
                    color: tap == 2 ? Colors.white : Colors.blueGrey,
                    borderRadius: BorderRadius.only(
                        topLeft:
                            tap != 0 ? Radius.circular(50) : Radius.circular(0),
                        bottomLeft: tap != 0
                            ? Radius.circular(50)
                            : Radius.circular(0))),
                child: const Icon(Icons.person)),
          )
        ],
      ),
    );
  }
}
