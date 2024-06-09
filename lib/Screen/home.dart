import 'package:bible/Screen/thermosrtat.dart';
import 'package:bible/widget/home/chosse_custom.dart';
import 'package:bible/widget/home/custom_cart.dart';
import 'package:bible/widget/home/list_cities_custom.dart';
import 'package:flutter/material.dart';

import '../widget/home/buttomnb.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;
    return Scaffold(
        bottomNavigationBar: const BottomNB(),
        backgroundColor: const Color.fromARGB(255, 251, 251, 251),
        appBar: AppBar(
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.settings,
                color: Colors.black,
              ),
            )
          ],
          backgroundColor: const Color.fromARGB(255, 251, 251, 251),
          elevation: 0,
          title: const SizedBox(
            height: 40,
            child: Text(
              "Home",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
        ),
        body: Container(
          height: h,
          width: w,
          padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Weather",
                  style: TextStyle(fontSize: 18, color: Colors.black54),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Thermostat.themosrtat);
                    },
                    child: CustomCart()),
                const SizedBox(
                  height: 20,
                ),
                const CustomChossing(),
                const SizedBox(
                  height: 10,
                ),
                CustomListCities()
              ],
            ),
          ),
        ));
  }
}
