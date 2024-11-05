import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text ('Settings and Privacy'),
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
                    child: Icon(Icons.language, color: Colors.white),
                  ),
                    SizedBox(width: 20),
                  Text(
                    'Language Settings',
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
                    backgroundColor: Colors.greenAccent,
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Tone and personality',
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
                    backgroundColor: Colors.orangeAccent,
                    child: Icon(Icons.notifications, color: Colors.white),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Notification and Alert',
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
                    backgroundColor: Colors.redAccent,
                    child: Icon(Icons.privacy_tip, color: Colors.white),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Privacy and Data Usage',
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
                    backgroundColor: Colors.purpleAccent,
                    child: Icon(Icons.build, color: Colors.white),
                  ),

                  SizedBox(width: 20),
                  Text(
                    'Integration and Automation',
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
                    backgroundColor: Colors.pinkAccent,
                    child: Icon(Icons.star, color: Colors.white),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Personalisation',
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
                    backgroundColor: Colors.teal,
                    child: Icon(Icons.security, color: Colors.white),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Security Settings',
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