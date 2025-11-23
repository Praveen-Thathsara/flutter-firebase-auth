import 'package:firebase_auth/firebase_auth.dart';
import 'package:futter_firbase_authapp/models/UserModel.dart';

class AuthServices {
  //firebase instance
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create a user from firebase user with uid
  UserModel? _userwithFirebaseUserUid(User? user) {
    return user != null ? UserModel(uid: user.uid) : null;
  }

  //create the steam for checking the auth changes in the user
  Stream<UserModel?> get user {
    return _auth.authStateChanges().map(_userwithFirebaseUserUid);
  }

  //sign in anonymouse
  Future singInAnonymously() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _userwithFirebaseUserUid(user);
    } catch (err) {
      print(err.toString());
      return null;
    }
  }

  //register using email and password
  //sign in using gmail
  //sing out
}
