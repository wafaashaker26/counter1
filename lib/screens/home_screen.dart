import 'package:counter1/widgets/column1.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff27445D),
        centerTitle: true,
        title: Text("Points Counter",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),),
      ),
      //backgroundColor: Color(0xffA6CDC6),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column1(team: "Team A"),
                Container(
                  height:MediaQuery.of(context).size.height*.66,
                  width:MediaQuery.of(context).size.width*.009,
                  color: Color(0xff16404D),
                ),
                Column1(team: "Team 2")
              ],
            ),
            SizedBox(height: 50,),
            MaterialButton(onPressed: (){
              setState(() {
                x=0;
              });
            },
              color: Color(0xff27445D),
              height: MediaQuery.of(context).size.height*.075,
              shape: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
              child: Text("Reset",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 27,color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}
