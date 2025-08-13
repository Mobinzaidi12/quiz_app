import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff417020A),
      appBar: AppBar(
        title: Text('Animal', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800),),
          backgroundColor: Color(0xff17020A)
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
              Container(
                margin: EdgeInsets.all(20),
                height: MediaQuery.of(context).size.width/6,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                    color: Colors.black
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15, left: 20),
                  child: Text('Tiger', style: TextStyle(fontSize: 25),),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                height: MediaQuery.of(context).size.width/6,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(
                        color: Colors.black
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15, left: 20),
                  child: Text('Sheep', style: TextStyle(fontSize: 25),),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                height: MediaQuery.of(context).size.width/6,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(
                        color: Colors.black
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15, left: 20),
                  child: Text('Dog', style: TextStyle(fontSize: 25),),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                height: MediaQuery.of(context).size.width/6,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(
                        color: Colors.black
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15, left: 20),
                  child: Text('Lion', style: TextStyle(fontSize: 25),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
