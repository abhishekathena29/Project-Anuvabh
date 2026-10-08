import 'package:flutter/widgets.dart';

/// Radius scale from `src/styles.css` where `--radius: 1.5rem` (24px).
abstract final class AppRadius {
  static const double sm = 20; // --radius - 4px
  static const double md = 22; // --radius - 2px
  static const double lg = 24; // --radius
  static const double xl = 28; // --radius + 4px
  static const double xxl = 32; // --radius + 8px  (rounded-2xl)
  static const double xxxl = 36; // --radius + 12px (rounded-3xl)
  static const double frame = 40; // sm:rounded-[2.5rem]
  static const double full = 9999;

  static BorderRadius circular(double r) => BorderRadius.circular(r);
}
