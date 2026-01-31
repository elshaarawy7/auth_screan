import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../widgets/app_text_field.dart';
import '../widgets/navigation_prompt.dart';
import '../widgets/primary_button.dart';
import 'sign_up_screen.dart';

/// Login screen — email & password only.
/// UI ready for validation and auth logic integration.
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _onLoginPressed() {
    // Placeholder for future logic (e.g. validation, API call).
  }

  void _onSignUpTapped() {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (context) => const SignUpScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 48),
              Text(
                'Welcome back',
                style: theme.textTheme.headlineMedium,
              ),
              const SizedBox(height: 8),
              Text(
                'Sign in to continue.',
                style: theme.textTheme.bodyLarge?.copyWith(
                  color: AppColors.onSurfaceVariant,
                ),
              ),
              const SizedBox(height: 40),
              AppTextField(
                label: 'Email',
                hint: 'Enter your email',
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 20),
              AppTextField(
                label: 'Password',
                hint: 'Enter your password',
                controller: _passwordController,
                obscureText: true,
                textInputAction: TextInputAction.done,
              ),
              const SizedBox(height: 32),
              PrimaryButton(
                label: 'Login',
                onPressed: _onLoginPressed,
              ),
              const SizedBox(height: 40),
              NavigationPrompt(
                prompt: "Don't have an account? ",
                actionLabel: 'Sign Up',
                onActionTap: _onSignUpTapped,
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
