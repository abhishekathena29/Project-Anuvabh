import 'package:flutter/material.dart';

import '../../../../core/router/app_router.dart';
import '../../../../core/router/app_routes.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/widgets/app_button.dart';

/// Shown in place of a widget that failed to build (the React root
/// `errorComponent`). Uses [appRouter] directly because it can be rendered
/// anywhere in the tree.
class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key, this.error});

  final Object? error;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.background,
      child: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 448),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "This page didn't load",
                  textAlign: TextAlign.center,
                  style: AppTypography.display(
                    size: AppFontSize.xl,
                    height: AppLineHeight.xl,
                    letterSpacing: AppFontSize.xl * -0.025, // tracking-tight
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Something went wrong on our end. You can try refreshing or head back home.',
                  textAlign: TextAlign.center,
                  style: AppTypography.body(
                    size: AppFontSize.sm,
                    height: AppLineHeight.sm,
                    color: AppColors.mutedForeground,
                  ),
                ),
                const SizedBox(height: 24),
                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    AppButton(label: 'Try again', onPressed: appRouter.refresh),
                    AppButton(
                      label: 'Go home',
                      variant: AppButtonVariant.outline,
                      onPressed: () => appRouter.go(AppRoutes.home),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
