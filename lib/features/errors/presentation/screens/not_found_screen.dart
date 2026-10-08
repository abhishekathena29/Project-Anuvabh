import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/router/app_routes.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/widgets/app_button.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 448),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '404',
                  textAlign: TextAlign.center,
                  style: AppTypography.display(
                    size: AppFontSize.display,
                    height: AppLineHeight.none,
                    weight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Page not found',
                  textAlign: TextAlign.center,
                  style: AppTypography.display(
                    size: AppFontSize.xl,
                    height: AppLineHeight.xl,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "The page you're looking for doesn't exist or has been moved.",
                  textAlign: TextAlign.center,
                  style: AppTypography.body(
                    size: AppFontSize.sm,
                    height: AppLineHeight.sm,
                    color: AppColors.mutedForeground,
                  ),
                ),
                const SizedBox(height: 24),
                AppButton(
                  label: 'Go home',
                  onPressed: () => context.go(AppRoutes.home),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
