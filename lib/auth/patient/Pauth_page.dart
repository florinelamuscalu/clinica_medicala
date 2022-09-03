import 'package:flutter/material.dart';
import '../../pages/patient/Pregister_page.dart';
import '../../pages/patient/PlogIn.dart';

class PAuthPage extends StatefulWidget {
  const PAuthPage({ Key? key }) : super(key: key);

  @override
  State<PAuthPage> createState() => _PAuthPageState();
}

class _PAuthPageState extends State<PAuthPage> {

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