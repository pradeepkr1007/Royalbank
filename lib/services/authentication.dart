import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';


class UserData {
  String displayName;
  String email;
  String uid;
  String password;
  String touch;


  UserData({this.displayName, this.email, this.uid, this.password, this.touch});
}

abstract class AuthImplementation{
  Future<String> verifyUser(UserData userData);
  Future<void> logOut();
  Future<String> getCurrentUser();
}

class UserAuth implements AuthImplementation {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  //To Authenticate new User
  Future<String> verifyUser (UserData userData) async{
    await firebaseAuth
        .signInWithEmailAndPassword(email: userData.email, password: userData.password);
    return "Login Successfull";
  }

  //To Sign out
  Future<void> logOut() async{
    try{
      return await firebaseAuth.signOut();
    }catch(e) {

    }
  }

  //To get current user
  Future<String> getCurrentUser() async{
    FirebaseUser user = await firebaseAuth.currentUser();
    return user.uid;
  }

}
