import 'package:flutter/material.dart';

class Trending extends StatelessWidget {
  const Trending({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Settings and Privacy'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: 150,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage("assets/images/logofor.png"),
                  ),
                  const SizedBox(height: 30),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Row(
                        children: const <Widget>[
                          SizedBox(width: 20),
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.blueAccent,
                            child: Icon(Icons.trending_up, color: Colors.white),
                          ),
                          SizedBox(width: 20),
                          Text(
                            'Write for me',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 20),
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.blueAccent,
                            child: Icon(Icons.timer, color: Colors.white),
                          ),
                          SizedBox(width: 20),
                          Text(
                            'Timings of text',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 20),
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.blueAccent,
                            child: Icon(Icons.smart_toy, color: Colors.white),
                          ),
                          SizedBox(width: 20),
                          Text(
                            'Smart AI Assistance',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 20),
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.blueAccent,
                            child: Icon(Icons.palette, color: Colors.white),
                          ),
                          SizedBox(width: 20),
                          Text(
                            'Canva',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 20),
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.blueAccent,
                            child: Icon(Icons.face, color: Colors.white),
                          ),
                          SizedBox(width: 20),
                          Text(
                            'Humanize AI',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 20),
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.blueAccent,
                            child: Icon(Icons.school, color: Colors.white),
                          ),
                          SizedBox(width: 20),
                          Text(
                            'Ease in Learning',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 20),
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.blueAccent,
                            child: Icon(Icons.code, color: Colors.white),
                          ),
                          SizedBox(width: 20),
                          Text(
                            'Code Copilot',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
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
        child: Text('Back'),
        backgroundColor: Colors.white,
      ),
    );
  }
}
