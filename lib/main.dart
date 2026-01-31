import 'package:auth_screan/features/auth/presentation/screens/login_page.dart';
import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';
import 'features/auth/presentation/screens/screens/home_screen.dart';

void main() {
  runApp(const AuthApp());
}

class AuthApp extends StatelessWidget {
  const AuthApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auth',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: LoginPage()
    );
  }
}
