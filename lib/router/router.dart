import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import '../appwrite/appwrite.dart';
import '../features/signup/src/signup_screen.dart';
import '../pages/home_page.dart';

final routerProvider = Provider<GoRouter>((reference) {
  return GoRouter(routes: [
    GoRoute(
      name: HomePage.name,
      path: '/',
      builder: (_, __) => const HomePage(),
    ),
    GoRoute(
      name: SignupScreen.name,
      path: '/signup',
      builder: (_, __) => SignupScreen(
        onSignup: (name, email, password) async {
          debugPrint('$name - $email - $password');
          final appwrite = GetIt.instance.get<Appwrite>();
          final user = await appwrite.createAccount(
            name,
            email,
            password,
          );
          debugPrint(jsonEncode(user ?? '{}'));
        },
      ),
    ),
  ]);
});
