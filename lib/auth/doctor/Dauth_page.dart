import 'package:flutter/material.dart';
import '../../pages/doctor/Dregister_page.dart';
import '../../pages/doctor/DlogIn.dart';

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
      return DLogIn(DshowRegisterPage: toggeleScreens );
    }
    else{
      return DRegisterPage(DshowLogInPage: toggeleScreens);
    }
  }
}