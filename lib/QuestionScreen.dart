import 'package:flutter/material.dart';
import 'package:untitled5/quiz_Model/quiz.dart';

class QuestionScreen extends StatefulWidget {
  final int index;
  QuestionScreen(this.index);
  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  Quiz myQuiz = Quiz();
  bool isCorrect = false;
  bool isWrong = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
            Text(
              myQuiz.quiz[widget.index].question,
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            Visibility(
              child: Icon(
                Icons.check,
                color: Colors.green,
                size: 50.0,
              ),
              visible: isCorrect,
              replacement: Visibility(
                  child: Icon(
                    Icons.clear,
                    color: Colors.red,
                    size: 50.0,
                  ),
                  visible: isWrong),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () {
                    if (myQuiz.quiz[widget.index].answer == true)
                      setState(() {
                        isCorrect = true;
                        isWrong = false;
                      });
                    else {
                      setState(() {
                        isCorrect = false;
                        isWrong = true;
                      });
                    }
                  },
                  child: Container(
                    width: 150,
                    height: 70,
                    child: Center(
                        child: Text(
                      " True",
                      style: TextStyle(fontSize: 50),
                    )),
                    decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(50)),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    if (myQuiz.quiz[widget.index].answer == false)
                      setState(() {
                        isCorrect = false;
                        isWrong = true;
                      });
                    else {
                      setState(() {
                        isCorrect = true;
                        isWrong = false;
                      });
                    }
                  },
                  child: Container(
                    width: 150,
                    height: 70,
                    child: Center(
                        child: Text(
                      " False",
                      style: TextStyle(fontSize: 50),
                    )),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50)),
                  ),
                ),
              ],
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuestionScreen(widget.index+1)),
                );
              },
              child: Container(
                width: 150,
                height: 70,
                child: Center(
                    child: Text(
                  "Next",
                  style: TextStyle(fontSize: 50),
                )),
                decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(50)),
              ),
            )
          ])),
    );
  }
}
