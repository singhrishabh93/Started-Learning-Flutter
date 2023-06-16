import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// void main() => runApp(MyApp()); can also be used when only on class is there

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
    //print('Answer Chosen!');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color ?',
      'What\'s your favorite animal ?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text(
          'My First App',
        )),
        body: Column(
          children: <Widget>[
            Text(
              questions[questionIndex],
            ),
            ElevatedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 Chosen!'),
              //answerQuestion, // or anonymous function () => print('Answer 2 Chosen!'),
            ),
            ElevatedButton(
              child: Text('Answer 3'),
              onPressed:
                  answerQuestion, // for long function (){//... print('Answer 3 Chosen');}
            ),
            ElevatedButton(
              child: Text('Answer 4'),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ), //Scaffold is used to give a base page design
    );
  }
}
