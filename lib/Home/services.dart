import 'package:az_solar/Const/colors.dart';
import 'package:az_solar/Const/contall.dart';
import 'package:az_solar/Home/compass.dart';
import 'package:az_solar/Home/homepage.dart';
import 'package:az_solar/Home/installation.dart';
import 'package:az_solar/Home/maintenance.dart';

import 'package:flutter/material.dart';

class Services extends StatefulWidget {
  const Services({Key? key}) : super(key: key);

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            icon: Icon(
              Icons.arrow_back,
              color: kprimareyiconcolor,
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(left: 90),
            child: Text(
              "الخدمات",
              style: TextStyle(
                  color: kprimareytextcolor,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ContAll(
                        text: Text(
                          "صيانة",
                        ),
                        icon: Icon(
                          Icons.settings,
                        ),
                        ontap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Maintenance()));
                        },
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.07,
                      ),
                      ContAll(
                        ontap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Installation()));
                        },
                        text: Text("تركيب"),
                        icon: Icon(Icons.apartment_sharp),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ContAll(
                        ontap: () {},
                        text: Text("حساب الجهد"),
                        icon: Icon(Icons.bolt),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.07,
                      ),
                      ContAll(
                        text: Text("بوصلة"),
                        icon: Icon(Icons.compass_calibration),
                        ontap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Compass()));
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ContAll(
                        ontap: () {},
                        text: Text("حساب الجهد"),
                        icon: Icon(Icons.settings),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.07,
                      ),
                      ContAll(
                        text: Text("بوصلة"),
                        icon: Icon(Icons.settings),
                        ontap: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
