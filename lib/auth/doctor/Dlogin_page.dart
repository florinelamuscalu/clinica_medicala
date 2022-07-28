import 'package:clinica_medicala/auth/patient/Pauth_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../pages/patient/Phome_page.dart';




class DLogInPage extends StatelessWidget {
  const DLogInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
          if (snapshot.hasData){
            return const HomePage();
          }
          else{
            return const AuthPage();
          }
        }
      ),
    );
  }
}