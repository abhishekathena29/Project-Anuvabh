import 'package:flutter/material.dart';

import '../../../../core/theme/app_typography.dart';

/// `font-display text-lg font-semibold` section heading.
class SectionTitle extends StatelessWidget {
  const SectionTitle(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppTypography.display(
        size: AppFontSize.lg,
        height: AppLineHeight.lg,
      ),
    );
  }
}
