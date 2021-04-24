import 'package:flutter/material.dart';
import 'package:untitled5/QuestionScreen.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Quiz APP"),
          centerTitle: true,
          backgroundColor: Colors.lightBlueAccent,
          elevation: 20.0,
        ),
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Welcome press start to start your quiz',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>QuestionScreen(0)
                  ),
                  );
                },
                child: Container(
                  width: 150,
                  height: 70,
                  child: Center(
                      child: Text(
                    "Start",
                    style: TextStyle(fontSize: 50),
                  )),
                  decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(50)),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
