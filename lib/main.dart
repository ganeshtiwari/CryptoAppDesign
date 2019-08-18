import 'package:flutter/material.dart';
import 'package:cryptoapp/screens/lock_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF192750),
        primaryColor: Color(0xFF192750),
      ),
      home: LockScreen(),
    );
  }
}

