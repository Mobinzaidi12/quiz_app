import 'package:flutter/material.dart';
import 'package:quiz_app/ui_helper.dart';

class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff417020),
      appBar: AppBar(
        title: Text('Animal', style: TextStyle(color: Color(0xffDBF2C0), fontWeight: FontWeight.w800, fontSize: 30),),
          backgroundColor: Color(0xff417020)
      ),
      body: ClipRRect(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30) ),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Color(0xffDBF2C0),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                  height: MediaQuery.of(context).size.width/1.30,
                  width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(image: AssetImage('assets/images/Lion.jpg'))
                ),
              ),
              UiHelper.CustomQuestionContainer(MediaQuery.of(context).size.width/6, MediaQuery.of(context).size.width, 'Tiger'),
              UiHelper.CustomQuestionContainer(MediaQuery.of(context).size.width/6, MediaQuery.of(context).size.width, 'Lion'),
              UiHelper.CustomQuestionContainer(MediaQuery.of(context).size.width/6, MediaQuery.of(context).size.width, 'Leopard'),
              UiHelper.CustomQuestionContainer(MediaQuery.of(context).size.width/6, MediaQuery.of(context).size.width, 'Donkey'),
            ],
          ),
        ),
      ),
    );
  }
}
