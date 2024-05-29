import 'package:flutter/material.dart';
import 'package:pomodoro/config/config.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: AppTheme().getTheme(),
      routerConfig: appRouter,
    );
  }
}