import 'package:flutter/material.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_radius.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/widgets/pressable.dart';
import '../../data/models/subject.dart';

/// Horizontally scrolling subject pills that bleed to the screen edges
/// (`-mx-5 px-5 overflow-x-auto`).
class SubjectFilterChips extends StatelessWidget {
  const SubjectFilterChips({
    super.key,
    required this.subjects,
    required this.selected,
    required this.onSelected,
  });

  final List<Subject> subjects;
  final Subject selected;
  final ValueChanged<Subject> onSelected;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.fromLTRB(
        AppConstants.gutter,
        0,
        AppConstants.gutter,
        4,
      ),
      child: Row(
        children: [
          for (var i = 0; i < subjects.length; i++) ...[
            if (i > 0) const SizedBox(width: 8),
            _SubjectChip(
              label: subjects[i].label,
              active: subjects[i] == selected,
              onTap: () => onSelected(subjects[i]),
            ),
          ],
        ],
      ),
    );
  }
}

class _SubjectChip extends StatelessWidget {
  const _SubjectChip({
    required this.label,
    required this.active,
    required this.onTap,
  });

  final String label;
  final bool active;
  final VoidCallback onTap;

  static const _duration = Duration(milliseconds: 150);

  @override
  Widget build(BuildContext context) {
    return Pressable(
      onTap: onTap,
      child: AnimatedContainer(
        duration: _duration,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: active ? AppColors.foreground : AppColors.card,
          borderRadius: AppRadius.circular(AppRadius.full),
        ),
        child: AnimatedDefaultTextStyle(
          duration: _duration,
          style: AppTypography.body(
            size: AppFontSize.xs,
            height: AppLineHeight.xs,
            weight: FontWeight.w600,
            color: active ? AppColors.background : AppColors.mutedForeground,
          ),
          child: Text(label),
        ),
      ),
    );
  }
}
