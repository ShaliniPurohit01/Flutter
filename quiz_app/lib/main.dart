import 'package:flutter/material.dart';
import './questions.dart';
import './answers.dart';

void main() =>   runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>
{
  var _questionIndex=0;
  void _answerQuestion(){
    setState(
      (){
        _questionIndex=_questionIndex+1;
        }
    );
    print(_questionIndex);
  }
  @override
  Widget build(BuildContext context)
  {
    //maps {key:value}
    var questions=[
      {
        'questionText':'What\'s your favorite color?',
        'answers':['Black','Red','Blue','Green'],
      },
      {
        'questionText':'What\'s your favorite animal?',
        'answers':['Horse','Dog','Cow','Cat'],
      },
      {
        'questionText':'Which\'s your food?',
        'answers':['Indian','Chinese','Continental','Italian'],
      },
    ];
    return MaterialApp(
       home:Scaffold(
        appBar:AppBar(title:Text('Welcome to Quiz'),
      ),
      body: Column(
        children:[
          Question(
            questions[_questionIndex],
          ),
          //callbacks
          Answer(_answerQuestion),
          Answer(_answerQuestion),
          Answer(_answerQuestion),
        ],
      ),
    );
  }
}
