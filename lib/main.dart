import 'package:bible/Screen/home.dart';
import 'package:bible/Screen/thermosrtat.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
        routes: {Thermostat.themosrtat: (context) => const Thermostat()},
      );
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => HomeScreen();
}
