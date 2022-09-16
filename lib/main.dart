

import 'package:flutter/material.dart';
// score changer
/*
void main() {
  runApp(ScoreApp());
}

class ScoreApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Score App",
      home: ScoreHome()

    );
    
  }
}


class ScoreHome extends StatefulWidget {
  @override
  _ScoreHomeState createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome> {
  int number = 0;
  void increaseNumber(){
    setState(() {
      number++;
    });
  }
  void decreaseNumber(){
    setState(() {
      number--;
    });
  }
  void resetNumber(){
    setState(() {
      number=0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Score Changer"),
        centerTitle: true
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.restore_outlined),
          onPressed: resetNumber),
        body: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            SizedBox(height: 100),
            Center(child: Text("Score is:", style: TextStyle(fontSize: 30, color: Colors.blue))),
            SizedBox(height: 20),
            Center(child: Text(number.toString(), style: TextStyle(fontSize: 50, color: Colors.blue))),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(color: Colors.green, child: Text("increase", style: TextStyle(color: Colors.white),), onPressed: increaseNumber),
                SizedBox(width: 20),
            RaisedButton(color: Colors.red  , child: Text("decrease", style: TextStyle(color: Colors.white),), onPressed: decreaseNumber)
              ],
            )



          ],
        ),

    );
    
  }
}*/



//dice roller app

import 'dart:math';
void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "dice app",
    home: HomePage()
  ));
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  int diceNumber = 0;
  changeDice(){
    setState(() {
      diceNumber = Random().nextInt(6);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DiceRoller"),centerTitle: true),
      body: Column(children: [
        SizedBox(height: 20),
        Center(child: Image.asset('assets/dice$diceNumber.png',height: 250,width: 250)),
        MaterialButton(
          color: Colors.blue,
        onPressed:changeDice,
        child: Text("Roll",style: TextStyle(color: Colors.white))
        )
      ]),
      );
    
  }
}



