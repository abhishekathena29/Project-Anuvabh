import 'package:flutter/material.dart';

/// Design tokens ported from `src/styles.css` (`:root`).
/// The oklch values were converted to sRGB hex so the palette matches exactly.
abstract final class AppColors {
  static const background = Color(0xFFF7EADF); // oklch(0.945 0.021 63.5)
  static const foreground = Color(0xFF18130E); // oklch(0.19 0.012 60)
  static const card = Color(0xFFFDFAF4); // oklch(0.985 0.008 80)
  static const cardForeground = foreground;
  static const primary = foreground;
  static const primaryForeground = Color(0xFFF9F4EC); // oklch(0.97 0.012 80)
  static const secondary = Color(0xFFEBDBC9); // oklch(0.9 0.03 70)
  static const secondaryForeground = foreground;
  static const muted = Color(0xFFEDE3D8); // oklch(0.92 0.018 70)
  static const mutedForeground = Color(0xFF665C52); // oklch(0.48 0.02 65)
  static const accent = Color(0xFFD7C9F3); // oklch(0.86 0.06 300)
  static const accentForeground = foreground;
  static const destructive = Color(0xFFE7000B); // oklch(0.577 0.245 27.325)
  static const destructiveForeground = Color(0xFFF8FAFC);
  static const border = Color(0xFFDDD2C6); // oklch(0.87 0.02 70)
  static const input = border;
  static const ring = Color(0xFF7E6E60); // oklch(0.55 0.03 65)

  // Pastel tones used for cards and game badges.
  static const lilac = Color(0xFFCFC5F1); // oklch(0.845 0.062 296)
  static const butter = Color(0xFFF0DB9B); // oklch(0.895 0.085 92)
  static const sage = Color(0xFFBED8BE); // oklch(0.855 0.045 145)
  static const mint = Color(0xFFBBE8DA); // oklch(0.895 0.05 175)
  static const blush = Color(0xFFFBD3CF); // oklch(0.9 0.045 25)
  static const cream = Color(0xFFFBF6EC); // oklch(0.975 0.014 85)
  static const ink = foreground;
}
