import 'package:flutter/material.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_radius.dart';
import '../../../../core/theme/app_typography.dart';
import '../../data/models/lesson_stage.dart';
import 'section_title.dart';

/// "Every game, five stages" — horizontally scrolling stage cards.
class StagesSection extends StatelessWidget {
  const StagesSection({super.key, required this.stages});

  final List<LessonStage> stages;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppConstants.gutter),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SectionTitle('Every game, five stages'),
              const SizedBox(height: 4),
              Text(
                'Same structure each time — no training needed.',
                style: AppTypography.body(
                  size: AppFontSize.xs,
                  height: AppLineHeight.xs,
                  color: AppColors.mutedForeground,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.fromLTRB(
            AppConstants.gutter,
            0,
            AppConstants.gutter,
            4,
          ),
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                for (var i = 0; i < stages.length; i++) ...[
                  if (i > 0) const SizedBox(width: 12),
                  _StageCard(stage: stages[i]),
                ],
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _StageCard extends StatelessWidget {
  const _StageCard({required this.stage});

  final LessonStage stage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: AppRadius.circular(AppRadius.xxl),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            stage.number,
            style: AppTypography.display(
              size: AppFontSize.xxs,
              height: AppLineHeight.xxs,
              weight: FontWeight.w400,
              color: AppColors.mutedForeground,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            stage.name,
            style: AppTypography.display(
              size: AppFontSize.base,
              height: AppLineHeight.base,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            stage.note,
            style: AppTypography.body(
              size: AppFontSize.xs,
              height: AppLineHeight.xs,
              color: AppColors.mutedForeground,
            ),
          ),
        ],
      ),
    );
  }
}
