import 'package:az_solar/Const/textall.dart';
import 'package:flutter/material.dart';

class Person extends StatefulWidget {
  const Person({Key? key}) : super(key: key);

  @override
  State<Person> createState() => _PersonState();
}

class _PersonState extends State<Person> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
            child: Column(
          children: [Text('')],
        )),
      ),
    );
  }
}
