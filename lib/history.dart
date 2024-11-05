import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text ('Already Searched'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child:Column(

          children: [

            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children:[
                  CircleAvatar(
                    radius: 150,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage("image/Logo.png"),
                  ),
                  const SizedBox(height: 30),
                  Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Row(
                        children: const <Widget>[
                          SizedBox(width: 20),
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.blueAccent,
                            child: Icon(Icons.question_answer_rounded, color: Colors.white),
                          ),
                          SizedBox(width: 20),
                          Text(
                            'Hello, how are you',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color:Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 20),
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.blue,
                            child: Icon(Icons.question_answer_rounded, color: Colors.white),
                          ),
                          SizedBox(width: 20),
                          Text(
                            'What is your task',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color:Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 20),
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.blue,
                            child: Icon(Icons.question_answer_rounded, color: Colors.white),
                          ),
                          SizedBox(width: 20),
                          Text(
                            'Tell us your name',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color:Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 20),
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.blue,
                            child: Icon(Icons.question_answer_rounded, color: Colors.white),
                          ),
                          SizedBox(width: 20),
                          Text(
                            'How can you assist us',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color:Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 20),
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.blue,
                            child: Icon(Icons.question_answer_rounded, color: Colors.white),
                          ),

                          SizedBox(width: 20),
                          Text(
                            'How to learn dart',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color:Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 20),
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.blue,
                            child: Icon(Icons.question_answer_rounded, color: Colors.white),
                          ),
                          SizedBox(width: 20),
                          Text(
                            'Tell us your age',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color:Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 20),
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.blue,
                            child: Icon(Icons.question_answer_rounded, color: Colors.white),
                          ),
                          SizedBox(width: 20),
                          Text(
                            'How to use flutter',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color:Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child:Text('Back'),
        backgroundColor: Colors.white,
      ),
    );
  }
}