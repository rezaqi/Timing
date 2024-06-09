import 'package:flutter/material.dart';

class CustomAboutCity extends StatelessWidget {
  final String image;
  final String title;
  final String hot;
  final String time;
  final String from;

  const CustomAboutCity(
      {super.key,
      required this.image,
      required this.title,
      required this.hot,
      required this.time,
      required this.from});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          //  color: Colors.deepOrange,
          borderRadius: BorderRadius.circular(10)),
      height: 70,
      width: 40,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: SizedBox(
            height: 130,
            width: double.infinity,
            child: Image.network(image, fit: BoxFit.cover),
          ),
        ),
        Text(
          title,
          style: const TextStyle(
              fontSize: 20, color: Colors.black87, fontWeight: FontWeight.bold),
        ),
        Text(
          hot,
          style: const TextStyle(
              fontSize: 20, color: Colors.black54, fontWeight: FontWeight.bold),
        ),
        Text(
          time,
          style: const TextStyle(
              fontSize: 20, color: Colors.black54, fontWeight: FontWeight.bold),
        ),
        Text(
          from,
          style: const TextStyle(
              fontSize: 20, color: Colors.black54, fontWeight: FontWeight.bold),
        )
      ]),
    );
  }
}
