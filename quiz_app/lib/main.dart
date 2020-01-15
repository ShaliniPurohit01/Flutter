import 'package:flutter/material.dart';

void main() =>   runApp(MyApp());

class MyApp extends StatelessWidget {

  var questionIndex=0;

  void answerQuestion(){
    questionIndex=questionIndex+1;
    print(questionIndex);
  }
  @override
  Widget build(BuildContext context) {
    var questions=[
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];
    return MaterialApp( home:Scaffold(
      appBar:AppBar(title:Text('Welcome to Quiz'),),
      body: Column(children: /*<Widget>*/[
        Text('The Question!'),
        RaisedButton(child: Text(questions[questionIndex],), onPressed: answerQuestion,),
        RaisedButton(child: Text('Answer 2'), onPressed: () => print('Answer 2 chosen!'),),
        RaisedButton(child: Text('Answer 3'), onPressed: (){
           print('Answer 3 chosen');
          },
        ),

      ],),
    ),);
  }
}
