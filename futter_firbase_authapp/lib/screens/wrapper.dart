import 'package:flutter/material.dart';
import 'package:futter_firbase_authapp/models/UserModel.dart';
import 'package:futter_firbase_authapp/screens/authentication/authenticate.dart';
import 'package:futter_firbase_authapp/screens/home/home.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    // the user data that the provider provides this can be a user data or can be null.
    final user = Provider.of<UserModel?>(context);

    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
