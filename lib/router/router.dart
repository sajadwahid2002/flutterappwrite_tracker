import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../pages/home_page.dart';

final routerProvider = Provider<GoRouter>((reference) {
  return GoRouter(routes: [
    GoRoute(
        name: HomePage.name, path: '/', builder: (_, __) => const HomePage()),
  ]);
});
