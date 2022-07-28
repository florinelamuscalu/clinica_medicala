import 'package:flutter/material.dart';
import '../../pages/patient/Pregister_page.dart';
import '../../pages/patient/PlogIn.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({ Key? key }) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {

  bool showLoginPage = true;

  void toggeleScreens(){
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if(showLoginPage){
      return PLogIn(PshowRegisterPage: toggeleScreens );
    }
    else{
      return RegisterPage(showLogInPage: toggeleScreens);
    }
  }
}