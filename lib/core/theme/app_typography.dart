import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

/// Tailwind font sizes with their default line-height ratios.
abstract final class AppFontSize {
  static const double xxs = 11; // text-[11px] (inherits line-height 1.5)
  static const double xs = 12; // text-xs   16px
  static const double sm = 14; // text-sm   20px
  static const double md = 15; // text-[15px]
  static const double base = 16; // text-base 24px
  static const double lg = 18; // text-lg   28px
  static const double xl = 20; // text-xl   28px
  static const double xxl = 24; // text-2xl  32px
  static const double display = 72; // text-7xl  1
}

abstract final class AppLineHeight {
  static const double xxs = 1.5;
  static const double xs = 16 / 12;
  static const double sm = 20 / 14;
  static const double md = 1.5;
  static const double base = 24 / 16;
  static const double lg = 28 / 18;
  static const double xl = 28 / 20;
  static const double xxl = 32 / 24;
  static const double tight = 1.25;
  static const double none = 1;
}

/// `--font-display` = Outfit (headings), `--font-sans` = Figtree (body).
abstract final class AppTypography {
  static TextStyle display({
    required double size,
    required double height,
    FontWeight weight = FontWeight.w600,
    Color color = AppColors.foreground,
    double? letterSpacing,
  }) {
    return GoogleFonts.outfit(
      fontSize: size,
      height: height,
      fontWeight: weight,
      color: color,
      letterSpacing: letterSpacing,
    ).copyWith(leadingDistribution: TextLeadingDistribution.even);
  }

  static TextStyle body({
    required double size,
    required double height,
    FontWeight weight = FontWeight.w400,
    Color color = AppColors.foreground,
  }) {
    return GoogleFonts.figtree(
      fontSize: size,
      height: height,
      fontWeight: weight,
      color: color,
    ).copyWith(leadingDistribution: TextLeadingDistribution.even);
  }
}
