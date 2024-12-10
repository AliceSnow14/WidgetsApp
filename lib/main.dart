import 'package:flutter/material.dart';
import 'package:new_app/config/theme/app_theme.dart';
import 'package:new_app/config/router/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme(selectedColor: 0).getTheme(),
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
