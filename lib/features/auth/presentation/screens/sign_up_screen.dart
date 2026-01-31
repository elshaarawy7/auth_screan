import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../widgets/app_text_field.dart';
import '../widgets/navigation_prompt.dart';
import '../widgets/primary_button.dart';

/// Registration (sign up) screen — UI only.
/// No validation or business logic. Structure ready for future integration.
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void _onSignUpPressed() {
    // Placeholder for future logic (e.g. validation, API call).
  }

  void _onSignInTapped() {
    Navigator.of(context).pop();
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
                'Create account',
                style: theme.textTheme.headlineMedium,
              ),
              const SizedBox(height: 8),
              Text(
                'Sign up to get started.',
                style: theme.textTheme.bodyLarge?.copyWith(
                  color: AppColors.onSurfaceVariant,
                ),
              ),
              const SizedBox(height: 40),
              AppTextField(
                label: 'Name',
                hint: 'Enter your name',
                controller: _nameController,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 20),
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
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 20),
              AppTextField(
                label: 'Confirm Password',
                hint: 'Confirm your password',
                controller: _confirmPasswordController,
                obscureText: true,
                textInputAction: TextInputAction.done,
              ),
              const SizedBox(height: 32),
              PrimaryButton(
                label: 'Sign Up',
                onPressed: _onSignUpPressed,
              ),
              const SizedBox(height: 40),
              NavigationPrompt(
                prompt: 'Already have an account? ',
                actionLabel: 'Sign In',
                onActionTap: _onSignInTapped,
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
