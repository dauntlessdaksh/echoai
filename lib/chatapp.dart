import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'ChatBot.dart';
import 'settings.dart';
import 'trending.dart';
import 'history.dart';
import 'login_page.dart'; // Make sure to import your login page

void main() {
  runApp(MaterialApp(
    home: ChatApp(),
  ));
}

class ChatApp extends StatefulWidget {
  const ChatApp({super.key});

  @override
  State<ChatApp> createState() => _ChatAppState();
}

class _ChatAppState extends State<ChatApp> {
  String? userEmail;

  @override
  void initState() {
    super.initState();
    _fetchUserEmail();
  }

  void _fetchUserEmail() {
    final user = FirebaseAuth.instance.currentUser;
    setState(() {
      userEmail = user?.email ?? 'No email available';
    });
  }

  Future<void> _signOut() async {
    await FirebaseAuth.instance.signOut();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginPage(showRegisterPage: () {  },)), // Navigate to the login page
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'ECHO.AI',
            style: TextStyle(color: Colors.lightBlueAccent),
          ),
        ),
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.person,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              accountName: Text("User"), // You can add user display name if needed
              accountEmail: Text(userEmail ?? "Loading..."),
              currentAccountPicture: CircleAvatar(
                child: Icon(
                  Icons.person,
                ),
              ),
            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home_rounded),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Trending"),
              leading: Icon(Icons.lightbulb),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Trending()),
                );
              },
            ),
            ListTile(
              title: Text("History"),
              leading: Icon(Icons.more_time_rounded),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => History()),
                );
              },
            ),
            ListTile(
              title: Text("Settings and Privacy"),
              leading: Icon(Icons.settings),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Settings()),
                );
              },
            ),
            // Sign Out List Tile
            ListTile(
              title: Text("Sign Out"),
              leading: Icon(Icons.logout),
              onTap: () {
                _signOut(); // Call the sign-out function
              },
            ),
          ],
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.black,
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      radius: 150,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage("assets/images/logofor.png"),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "from",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Gemini",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Hello Team",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "How can I help you today?",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyApp()),
                    );
                  },
                  child: Text("Let's Chat!"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
