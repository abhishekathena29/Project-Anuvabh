import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_radius.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/widgets/pressable.dart';
import '../../data/models/game.dart';

class GameListTile extends StatelessWidget {
  const GameListTile({super.key, required this.game, this.onTap});

  final Game game;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Pressable(
      onTap: onTap ?? () {},
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: AppColors.card,
          borderRadius: AppRadius.circular(AppRadius.xxxl),
        ),
        child: Row(
          children: [
            Container(
              width: 56,
              height: 56,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: game.tone,
                borderRadius: AppRadius.circular(AppRadius.xxl),
              ),
              child: Text(
                game.badge,
                style: AppTypography.display(
                  size: AppFontSize.sm,
                  height: AppLineHeight.sm,
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    game.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTypography.display(
                      size: AppFontSize.md,
                      height: AppLineHeight.md,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    game.subtitle,
                    style: AppTypography.body(
                      size: AppFontSize.xs,
                      height: AppLineHeight.xs,
                      color: AppColors.mutedForeground,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            const Icon(
              LucideIcons.chevronRight400,
              size: 16,
              color: AppColors.mutedForeground,
            ),
          ],
        ),
      ),
    );
  }
}
