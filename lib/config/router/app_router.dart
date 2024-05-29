

import 'package:go_router/go_router.dart';
import 'package:pomodoro/features/pomodoro/presentation/presentation.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),)
  ]);