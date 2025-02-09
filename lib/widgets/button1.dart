import 'package:flutter/material.dart';

import 'column1.dart';

class Button1 extends StatelessWidget {
  const Button1({super.key, required this.namePoint, required this.onpressed1});
final String namePoint;
final Function() onpressed1;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpressed1,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(150, 50),
        backgroundColor: Color(0xff27445D),
      ),
      child: Text(
        namePoint,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),
      ),
    );
  }
}
