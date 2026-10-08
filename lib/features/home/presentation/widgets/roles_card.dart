import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_radius.dart';
import '../../../../core/theme/app_typography.dart';
import 'info_card.dart';

class RolesCard extends StatelessWidget {
  const RolesCard({super.key, required this.roles});

  final List<String> roles;

  @override
  Widget build(BuildContext context) {
    return InfoCard(
      color: AppColors.mint,
      icon: LucideIcons.users300,
      title: 'Teams with roles',
      body: 'Everyone has a job, so everyone plays.',
      footer: Wrap(
        spacing: 8,
        runSpacing: 8,
        children: [
          for (final role in roles)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: AppColors.background.withValues(alpha: 0.6),
                borderRadius: AppRadius.circular(AppRadius.full),
              ),
              child: Text(
                role,
                style: AppTypography.body(
                  size: AppFontSize.xs,
                  height: AppLineHeight.xs,
                  weight: FontWeight.w500,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
