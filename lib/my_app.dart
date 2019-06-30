import 'package:e_commerce/login_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
//      theme: ThemeData.dark(),
      home: LoginPage(),
    );
  }
}
