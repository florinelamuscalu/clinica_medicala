import 'package:flutter/material.dart';
import '../../pages/doctor/Dregister_page.dart';
import '../../pages/doctor/DlogIn.dart';

class DAuthPage extends StatefulWidget {
  const DAuthPage({ Key? key }) : super(key: key);

  @override
  State<DAuthPage> createState() => _DAuthPageState();
}

class _DAuthPageState extends State<DAuthPage> {

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