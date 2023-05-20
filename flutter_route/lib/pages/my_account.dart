import 'package:flutter/material.dart';
import 'package:flutter_route/pages/login.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Text('My Account'),
        TextButton(
            onPressed: () => showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return LoginPopup();
                  },
                ),
            child: Text('login'))
      ]),
    );
  }
}
