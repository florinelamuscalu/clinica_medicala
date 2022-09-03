import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class PHomePage extends StatefulWidget {
  const PHomePage({Key? key}) : super(key: key);

  @override
  State<PHomePage> createState() => _PHomePageState();
}

class _PHomePageState extends State<PHomePage> {


  int _selectedIndex = 0;

  final screen =[
    Message(),
    const Center(child: Text('1'),),
    const Center(child: Text('2'),),
    const Center(child: Text('3'),),
  ];


  //final user = FirebaseAuth.instance.currentUser!;

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: Center(
  //       child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
  //         Text('signed in ' + user.email!),
  //         MaterialButton(
  //           onPressed: () {
  //             FirebaseAuth.instance.signOut();
  //           },
  //           color: Colors.red[200],
  //           child: const Text('sign out'),
  //         )
  //       ]),
  //     ),
  //   );
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[_selectedIndex],
      bottomNavigationBar: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Colors.purple, Colors.red])),
      child: BottomAppBar(
        elevation: 0,
        color: Colors.transparent,
        child: SizedBox(
          height: 70,
          width: MediaQuery.of(context).size.width,
          child: Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButtomBar(
                      text: 'Message',
                      icon: Icons.message_outlined,
                      selected: _selectedIndex == 0, // first page is 0 (messenger)
                      onPressed: () {
                        setState(() {
                          _selectedIndex = 0;
                        });
                      }),
                      IconButtomBar(
                      text: 'Appointments',
                      icon: Icons.notes_outlined,
                      selected: _selectedIndex == 1, // first page is 0 (messenger)
                      onPressed: () {
                        setState(() {
                          _selectedIndex = 1;
                        });
                      }),
                      IconButtomBar(
                      text: 'Recipe',
                      icon: Icons.newspaper_outlined,
                      selected: _selectedIndex == 2, // first page is 0 (messenger)
                      onPressed: () {
                        setState(() {
                          _selectedIndex = 2;
                        });
                      }),
                      IconButtomBar(
                      text: 'Medical History',
                      icon: Icons.supervisor_account_outlined,
                      selected: _selectedIndex == 3, // first page is 0 (messenger)
                      onPressed: () {
                        setState(() {
                          _selectedIndex = 3;
                        });
                      }),
                ],
              )),
        ),
      ),
    )
    );
  }

}


class IconButtomBar extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;

  const IconButtomBar(
      {required this.text,
      required this.icon,
      required this.selected,
      required this.onPressed,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          icon:
              Icon(icon, size: 25, color: selected ? Colors.white : Colors.black),
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 12,
              height: 1,
              color: selected ? Colors.white : Colors.black),
        )
      ],
    );
  }
}

class Message extends StatelessWidget{
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('signed in ' + user.email!),
          MaterialButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
            },
            color: Colors.red[200],
            child: const Text('sign out'),
          )
        ]),
        );
  }
}
