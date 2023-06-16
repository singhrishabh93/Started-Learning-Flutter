import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// void main() => runApp(MyApp()); can also be used when only on class is there

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState(); // _ is used to make public class private so that MyAppState can't be used where main.dart file has imported
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
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
              questions[_questionIndex],
            ),
            ElevatedButton(
              child: Text('Answer 1'),
              onPressed: _answerQuestion,
            ),
            ElevatedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 Chosen!'),
              //answerQuestion, // or anonymous function () => print('Answer 2 Chosen!'),
            ),
            ElevatedButton(
              child: Text('Answer 3'),
              onPressed:
                  _answerQuestion, // for long function (){//... print('Answer 3 Chosen');}
            ),
            ElevatedButton(
              child: Text('Answer 4'),
              onPressed: _answerQuestion,
            ),
          ],
        ),
      ), //Scaffold is used to give a base page design
    );
  }
}
