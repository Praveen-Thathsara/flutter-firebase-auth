import 'package:flutter/material.dart';
import 'package:futter_firbase_authapp/constants/colors.dart';
import 'package:futter_firbase_authapp/constants/description.dart';
import 'package:futter_firbase_authapp/constants/styles.dart';
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

  //form key
  final _formKey = GlobalKey<FormState>();
  //email password states
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgBlack,
      appBar: AppBar(
        title: const Text("SIGN IN", style: TextStyle(color: Colors.white)),
        elevation: 0,
        backgroundColor: bgBlack,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 10),
          child: Column(
            children: [
              //description
              const Text(description, style: descriptionStyle),
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Center(
                  child: Image.asset("assets/images/man.png", height: 200),
                ),
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    //email
                    TextFormField(
                      validator: (val) =>
                          val?.isEmpty == true ? "Enter a valid email" : null,
                      onChanged: (val) {
                        setState(() {
                          email = val;
                        });
                      },
                    ),
                    //password
                    TextFormField(
                      validator: (val) =>
                          val!.length < 6 ? "Enter a valid password" : null,
                      onChanged: (val) {
                        setState(() {
                          password = val;
                        });
                      },
                    ),
                    //google
                    const SizedBox(height: 40),
                    const Text(
                      "Login with social accounts",
                      style: descriptionStyle,
                    ),
                    GestureDetector(
                      //sign in with google
                      onTap: () {},
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Image.asset(
                            "assets/images/google.png",
                            height: 45,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    //register
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Do not have an account?",
                          style: descriptionStyle,
                        ),
                        const SizedBox(width: 10),
                        GestureDetector(
                          //go to the register page
                          onTap: () {},
                          child: Text(
                            "REGISTER",
                            style: TextStyle(
                              color: mainBlue,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    //button
                    const SizedBox(height: 40),

                    GestureDetector(
                      //methos for login user
                      onTap: () {},
                      child: Container(
                        height: 40,
                        width: 200,
                        decoration: BoxDecoration(
                          color: bgBlack,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(width: 2, color: mainZian),
                        ),
                        child: Center(
                          child: const Text(
                            "LOGIN",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 15),
                    //anon
                    GestureDetector(
                      //methos for login user
                      onTap: () {},
                      child: Container(
                        height: 40,
                        width: 200,
                        decoration: BoxDecoration(
                          color: bgBlack,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(width: 2, color: mainZian),
                        ),
                        child: Center(
                          child: const Text(
                            "LOGIN AS GUEST",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// ElevatedButton(
//         child: const Text("Sign in Anonymously"),
//         onPressed: () async {
//           dynamic result = await _auth.singInAnonymously();
//           if (result == Null) {
//             print("error in sing in anonymously");
//           } else {
//             print("sing in anon");
//             print(result.uid);
//           }
//         },
//       ),