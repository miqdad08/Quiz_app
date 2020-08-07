import 'package:flutter/cupertino.dart';
import 'package:quiz_app/main.dart';
import 'package:quiz_app/question.dart';

QuestionLogic questionLogic = QuestionLogic();



class QuestionLogic {

  int _questionNumber = 0;

  List<Question> _questionList = [
    Question('Makan Dengan tangan Kanan',
        true),
    Question('Makan MInum Sambil Berdiri',
        false),
    Question('Makan Sampai Kekenyangan',
        false),
    Question('Membaca Doa Sebelum dan sesudah  Makan Dan minum',
        true),
    Question('Mendahului guru saat tanpa salam dan sambil berdiri',
        false),
    Question('Makan Sampai Kekenyangan',
        false),
    Question('Menutup Mata ketik Shalat',
        false),
    Question('Memperhatikan guru atau orang sedang menjelaskan',
        true),
    Question('Memanggil temen dengan sebutan tidak baik',
        false),
    Question('Melampiaskanamarah saat terkena musibah dengan menyebut kata kata kotor atau hewan',
        false),
    Question('Saling bekerja sama saat ujian',false)
  ];


  String getQuestion() =>
      _questionList[_questionNumber].question;

  int getQuestionNumberText() => _questionNumber + 1;

  int getTotalQuestText() =>
      _questionList.length;



  bool getCorrectAnswer()=>
      _questionList[_questionNumber].answer;

  void nextQuestion(){
    if(_questionNumber < _questionList.length - 1){
      _questionNumber++;
      print(_questionNumber);
    }
  }

  bool isFinished(){
    if(_questionNumber >= _questionList.length - 1)
    {
      return true;
    }else{
      return false;
    }
  }

  void resetQuestion() => _questionNumber = 0;

}