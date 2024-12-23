import 'package:flutter/material.dart';
import 'package:visitor_log/login_page.dart';

void main() {
  runApp(const VisitorEaseApp());
}

class VisitorEaseApp extends StatelessWidget {
  const VisitorEaseApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Visitor',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const LoginPage(),
    );
  }
}




