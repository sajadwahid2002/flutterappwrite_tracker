import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutterappwrite_tracker/dependencies.dart';
import 'package:flutterappwrite_tracker/router/router.dart';

void main() {
  initDependancies();
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, reference, chlid) {
      final router = reference.watch(routerProvider);

      return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: router,
      );
    });
  }
}
