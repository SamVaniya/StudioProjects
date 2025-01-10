import 'package:flutter/material.dart';
import 'package:gramdhan/LoanListScreen.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GramDhan")),
      body: Container(
        // You can replace this with the body of your app
        child: Center(
          child: Text("Hello, GramDhan!"),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoanListScreen(),
          ),
        );
      },),
    );
  }
}