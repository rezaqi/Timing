import 'package:bible/widget/home/custom_city.dart';
import 'package:flutter/material.dart';

class CustomListCities extends StatelessWidget {
  const CustomListCities({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 540,
      width: 400,
      child: GridView(
        primary: false,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 250,
            crossAxisCount: 2,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5),
        cacheExtent: 2,
        children: const [
          CustomAboutCity(
              image:
                  "https://i.natgeofe.com/k/5b396b5e-59e7-43a6-9448-708125549aa1/new-york-statue-of-liberty.jpg",
              title: "New Yourk",
              hot: "5\u00B0",
              time: "8:00 AM",
              from: "6886 KM"),
          CustomAboutCity(
              image:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrAJe3dYzTMHcYF_SLgQawYHFL1LkyJiHvRg&usqp=CAU",
              title: "Dubai",
              hot: "20\u00B0",
              time: "4:00 PM",
              from: "1009 KM"),
          CustomAboutCity(
              image:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuFjK4Lp8u6meHNoAyYj7nxTVtYjdjKDNQVg&usqp=CAU",
              title: "Egypt",
              hot: "30\u00B0",
              time: "3:00 PM",
              from: "1 KM"),
          CustomAboutCity(
              image:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR94u0EyhIYQ35WVzV0LSlxZ0Ozv9tMqfzewA&usqp=CAU",
              title: "France",
              hot: "9\u00B0",
              time: "7:00 PM",
              from: "26244 KM")
        ],
      ),
    );
  }
}
