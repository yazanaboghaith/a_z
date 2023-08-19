import 'package:az_solar/Const/colors.dart';
import 'package:flutter/material.dart';

class ContAll extends StatefulWidget {
  ContAll(
      {Key? key, required this.ontap, required this.text, required this.icon})
      : super(key: key);
  final Icon icon;
  final Text text;
  final VoidCallback ontap;

  @override
  State<ContAll> createState() => _ContAllState();
}

class _ContAllState extends State<ContAll> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.ontap,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.21,
        width: MediaQuery.of(context).size.width * 0.37,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                offset: Offset(
                  0,
                  1,
                ),
                color: Colors.black.withOpacity(0.5),
                blurRadius: 0.2,
                spreadRadius: 0.1),
          ],
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Icon(
                  widget.icon.icon,
                  size: 100,
                ),
                SizedBox(height: 8),
                DefaultTextStyle(
                  style: TextStyle(
                    color: ksecondrerytextcolor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  child: widget.text,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
