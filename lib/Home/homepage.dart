import 'package:az_solar/Const/colors.dart';
import 'package:az_solar/Home/person.dart';
import 'package:az_solar/Home/services.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: (Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
            ),
          ],
        )),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              color: Colors.grey.shade500,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              )),
          height: MediaQuery.of(context).size.height * 0.07,
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Expanded(
                child: IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Person()));
                  },
                  icon: Icon(
                    Icons.person,
                    color: kprimareyiconcolor,
                    size: 35,
                  ),
                ),
              ),
              Expanded(
                child: IconButton(
                  onPressed: () {
                    setState(() {});
                  },
                  icon: Icon(
                    Icons.home,
                    color: kprimareyiconcolor,
                    size: 35,
                  ),
                ),
              ),
              Expanded(
                child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Services()));
                  },
                  icon: Icon(
                    Icons.design_services,
                    size: 35,
                    color: kprimareyiconcolor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
