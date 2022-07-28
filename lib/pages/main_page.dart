import 'package:clinica_medicala/auth/doctor/Dlogin_page.dart';
import 'package:clinica_medicala/auth/patient/Plogin_page.dart';
import 'package:flutter/material.dart';


class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  //bool doctor = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[50],
        //backgroundSize: double.infinity,
        body: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 30.0),
              child: Text(
                'Choose your user!',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 24,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Material(
                  color: Colors.red[200],
                  elevation: 10,
                  borderRadius: BorderRadius.circular(28),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    splashColor: Colors.deepOrange[200],
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DLogInPage()
                              )
                              );
                              //doctor = true;
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Ink.image(
                            image: const AssetImage("assets/doc3.png"),
                            height: 200,
                            width: 150,
                            fit: BoxFit.cover),
                        const SizedBox(
                          height: 6,
                        ),
                        const Text(
                          'doctor',
                          style: TextStyle(
                            fontSize: 26,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                      ],
                    ),
                  ),
                ),
                Material(
                  color: Colors.red[200],
                  elevation: 10,
                  borderRadius: BorderRadius.circular(28),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    splashColor: Colors.deepOrange[200],
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PLogInPage()));
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Ink.image(
                            image: const AssetImage("assets/pacient.png"),
                            height: 200,
                            width: 150,
                            fit: BoxFit.cover),
                        const SizedBox(
                          height: 6,
                        ),
                        const Text(
                          'patient',
                          style: TextStyle(
                            fontSize: 26,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: Text(
                'Online Clinic',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 32,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}