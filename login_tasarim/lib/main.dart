import 'package:flutter/material.dart';
import 'package:login_tasarim/use_login.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    

    return MaterialApp(
      title: 'Material App',
      home: UserLogin()
    );
  }
}
