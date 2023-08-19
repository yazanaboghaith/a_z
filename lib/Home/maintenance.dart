import 'package:az_solar/Home/services.dart';
import 'package:flutter/material.dart';

class Maintenance extends StatefulWidget {
  const Maintenance({Key? key}) : super(key: key);

  @override
  State<Maintenance> createState() => _MaintenanceState();
}

class _MaintenanceState extends State<Maintenance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Services()));
          },
          icon: Icon(Icons.back_hand),
        ),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: []),
    );
  }
}
