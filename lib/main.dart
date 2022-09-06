import 'package:flutter/material.dart';
import 'dart:math';


void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _jokes = ["text 01 ","text 02","text 03","text 04"];

  var _generatedJoke = "Click below to generate a joke:";

  void _generateJoke() {

    var randomNumber = Random().nextInt(_jokes.length);

    setState(() {
      _generatedJoke = _jokes[randomNumber];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dad Jokes"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(12),
          /*width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(width: 3)
          ),*/
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/velho.jpg"),
              Text(_generatedJoke,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 19,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    color: Colors.black
                ),
              ),
              ElevatedButton(
                child: Text("New Joke",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                onPressed: _generateJoke,
              )
            ],
          ),
        ),
      ),
  );
  }
}
