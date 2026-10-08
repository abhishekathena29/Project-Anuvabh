import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_radius.dart';
import '../theme/app_typography.dart';

enum AppButtonVariant { primary, outline }

/// `inline-flex rounded-md px-4 py-2 text-sm font-medium` buttons used on the
/// 404 and error pages, including the `hover:` colour change.
class AppButton extends StatefulWidget {
  const AppButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.variant = AppButtonVariant.primary,
  });

  final String label;
  final VoidCallback onPressed;
  final AppButtonVariant variant;

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    final isPrimary = widget.variant == AppButtonVariant.primary;

    final background = isPrimary
        ? (_hovered
              ? AppColors.primary.withValues(alpha: 0.9)
              : AppColors.primary)
        : (_hovered ? AppColors.accent : AppColors.background);
    final foreground = isPrimary
        ? AppColors.primaryForeground
        : AppColors.foreground;

    return Semantics(
      button: true,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) => setState(() => _hovered = true),
        onExit: (_) => setState(() => _hovered = false),
        child: GestureDetector(
          onTap: widget.onPressed,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 150),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: background,
              borderRadius: AppRadius.circular(AppRadius.md),
              border: isPrimary ? null : Border.all(color: AppColors.input),
            ),
            child: Text(
              widget.label,
              style: AppTypography.body(
                size: AppFontSize.sm,
                height: AppLineHeight.sm,
                weight: FontWeight.w500,
                color: foreground,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
