import 'package:az_solar/Const/colors.dart';
import 'package:az_solar/Home/services.dart';
import 'package:flutter/material.dart';

class Installation extends StatefulWidget {
  const Installation({Key? key}) : super(key: key);

  @override
  State<Installation> createState() => _InstallationState();
}

class _InstallationState extends State<Installation> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Services()));
            },
            icon: Icon(Icons.arrow_back),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                ":ما الذي تريد تركيبه ",
                style: TextStyle(
                  color: ksecondrerytextcolor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "ماذا تريد ان تركب",
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.more_vert_sharp),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.black,
                height: 80,
              )
            ],
          ),
        ),
      ),
    );
  }
}
