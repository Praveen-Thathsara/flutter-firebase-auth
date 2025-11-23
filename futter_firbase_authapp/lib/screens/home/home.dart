import 'package:flutter/material.dart';
import 'package:futter_firbase_authapp/services/auth.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //create a abj from Authservice
  final AuthServices _auth = AuthServices();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("HOME"),
          actions: [
            ElevatedButton(
              onPressed: () async {
                await _auth.singOut();
              },
              child: const Icon(Icons.logout),
            ),
          ],
        ),
      ),
    );
  }
}
