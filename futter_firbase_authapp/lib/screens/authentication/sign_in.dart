import 'package:flutter/material.dart';
import 'package:futter_firbase_authapp/services/auth.dart';
import '../../services/auth.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  //ref for the authServices class
  final AuthServices _auth = AuthServices();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sign In")),
      body: ElevatedButton(
        child: const Text("Sign in Anonymously"),
        onPressed: () async {
          dynamic result = await _auth.singInAnonymously();
          if (result == Null) {
            print("error in sing in anonymously");
          } else {
            print("sing in anon");
            print(result);
          }
        },
      ),
    );
  }
}
