import 'package:counter1/widgets/button1.dart';
import 'package:flutter/material.dart';

class Column1 extends StatefulWidget {
  const Column1({super.key, required this.team});

  final String team;

  @override
  State<Column1> createState() => _Column1State();
}

int x = 0;

class _Column1State extends State<Column1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.team,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 37),
        ),
        SizedBox(
          height: 10,
        ),
        Text("$x", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 70)),
        SizedBox(
          height: 10,
        ),
        Text(
          "Add : ",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
        ),
        SizedBox(
          height: 10,
        ),
        Button1(
            namePoint: "1 point",
            onpressed1: () {
              setState(() {
                x++;
              });
            }),
        SizedBox(
          height: 30,
        ),
        Button1(
            namePoint: "2 points",
            onpressed1: () {
              setState(() {
                x+=2;
              });
            }),
        SizedBox(
          height: 30,
        ),
        Button1(
            namePoint: "3 points",
            onpressed1: () {
              setState(() {
                x+=3;
              });
            }),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
