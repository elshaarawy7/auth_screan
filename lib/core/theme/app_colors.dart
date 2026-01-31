import 'package:flutter/material.dart';

/// Calm, minimal color palette for the app.
/// Designed for readability and a relaxed visual experience.
abstract final class AppColors {
  AppColors._();

  // Primary & accent
  static const Color primary = Color(0xFF5B8A72);
  static const Color primaryLight = Color(0xFF7BA392);
  static const Color primaryDark = Color(0xFF4A735E);

  // Neutrals
  static const Color surface = Color(0xFFFAFAF9);
  static const Color surfaceVariant = Color(0xFFF5F4F3);
  static const Color outline = Color(0xFFE5E3E0);
  static const Color outlineVariant = Color(0xFFD4D2CE);

  // Text
  static const Color onSurface = Color(0xFF1C1B1A);
  static const Color onSurfaceVariant = Color(0xFF4D4B49);
  static const Color onPrimary = Color(0xFFFFFFFF);
  static const Color hint = Color(0xFF787674);
}
