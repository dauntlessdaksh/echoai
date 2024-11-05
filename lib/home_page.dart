import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("logged in as: " + user.email!),
            MaterialButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
                await GoogleSignIn().disconnect();
              },
              color: Colors.deepPurple[200],
              child: Text("signed out"),
            )
          ],
        ),
      ),
    );
  }
}
