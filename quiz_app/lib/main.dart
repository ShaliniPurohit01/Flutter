import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  //maps {key:value}
  //this is compile time constant
  // static const questions = [
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answer': ['Black', 'Red', 'Blue', 'Green'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answer': ['Horse', 'Dog', 'Cow', 'Cat'],
    },
    {
      'questionText': 'Which\'s your food?',
      'answer': ['Indian', 'Chinese', 'Continental', 'Italian'],
    }
  ];
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions !!');
    } else {
      print('We dont have more questions !!');
    }
  }

  @override
  Widget build(BuildContext context) {
    // var dummy = ['hello'];
    // dummy.add('Max!!');
    // print(dummy);
    // [hello, Max!!]

    // var dummy =const ['hello'];
    // dummy.add('Max!!');
    // print(dummy); //error
    //we add new value to unmodifiedable variable
    // dummy=[]; // this is allowed because dummy is variable but list is constant

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Quiz'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(),
        // Column(
        //   children: [
        //     Question(
        //       questions[_questionIndex]['questionText'],
        //     ),
        //     //callbacks
        //     // Answer(_answerQuestion),
        //     // Answer(_answerQuestion),
        //     // Answer(_answerQuestion),

        //     //mapping list to widget
        //     ...(questions[_questionIndex]['answer'] as List<String>)
        //         .map((answers) {
        //       return Answer(_answerQuestion, answers);
        //     }).toList()
        //   ],
        // ):Center(child:Text('You did it !')),
      ),
    );
  }
}
