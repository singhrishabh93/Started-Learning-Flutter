import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// void main() => runApp(MyApp()); can also be used when only on class is there

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer Chosen!');
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
            Text('The questions!'),
            ElevatedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: Text('Answer 2'),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: Text('Answer 3'),
              onPressed: answerQuestion,
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
