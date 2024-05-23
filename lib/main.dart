import 'package:flutter/material.dart';
import 'package:flutterappwrite_tracker/appwrite/appwrite.dart';
import 'package:flutterappwrite_tracker/dependencies.dart';
import 'package:get_it/get_it.dart';

void main() {
  initDependancies();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
   
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
