import 'package:flutter/material.dart';
import 'package:flutterappwrite_tracker/features/signup/src/signup_screen.dart';
import 'package:go_router/go_router.dart';

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
        body: Center(
          child: Column(
            children: [
              const Text(
                'welcome to Flutter Appwrite Tracker',
                style: TextStyle(
                  fontFamily: 'Cairo',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontFamily: 'Cairo',
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  context.goNamed(SignupScreen.name);
                },
                child: const Text(
                  'Create account',
                  style: TextStyle(
                    fontFamily: 'Cairo',
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
