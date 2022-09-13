import 'package:flutter/material.dart';
import 'Phome_page.dart';
import '../main_page.dart';

class SettingsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isWhite ? Colors.white : Colors.black,
      appBar: AppBar(
        backgroundColor: isWhite ? Colors.white : Colors.black,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xff841742),
          ),
          onPressed: () => Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const PHomePage())),
        ),
        title: const Text(
          'Settings',
          style: TextStyle(
            color: Color(0xff841742),
          ),
        ),
        centerTitle: true,
      ),
      body: const SettingsPageState(),
    );
  }
}

class SettingsPageState extends StatefulWidget {
  const SettingsPageState({Key? key}) : super(key: key);

  @override
  State<SettingsPageState> createState() => _SettingsPageStateState();
}

class _SettingsPageStateState extends State<SettingsPageState> {
  @override
  Widget build(BuildContext context) {
   return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
           Text(
            "Settings page",
            style: TextStyle(
              color: Color(0xff841742),
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
