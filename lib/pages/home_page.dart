import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const String name = 'home';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Home',
            style: TextStyle(
              fontFamily: 'Cairo',
            ),
          ),
        ),
        body: const Center(
          child: Text(
            'welcome to Flutter Appwrite Tracker',
            style: TextStyle(
              fontFamily: 'Cairo',
            ),
          ),
        ));
  }
}
