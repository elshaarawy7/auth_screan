import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

/// Optional navigation text, e.g. "Already have an account? Sign In".
/// [prompt] is the static text; [actionLabel] is the tappable part.
/// Ready for [onActionTap] navigation integration.
class NavigationPrompt extends StatelessWidget {
  const NavigationPrompt({
    super.key,
    required this.prompt,
    required this.actionLabel,
    this.onActionTap,
  });

  final String prompt;
  final String actionLabel;
  final VoidCallback? onActionTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          prompt,
          style: theme.textTheme.bodyMedium,
        ),
        GestureDetector(
          onTap: onActionTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
            child: Text(
              actionLabel,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: AppColors.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
