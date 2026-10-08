import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_radius.dart';
import '../../../../core/theme/app_typography.dart';
import 'section_title.dart';

/// Pastel `rounded-3xl p-5` card with an icon, heading, body and optional
/// footer — used for "Teams with roles" and "Trap rounds".
class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
    required this.color,
    required this.icon,
    required this.title,
    required this.body,
    this.footer,
  });

  final Color color;
  final IconData icon;
  final String title;
  final String body;
  final Widget? footer;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: AppRadius.circular(AppRadius.xxxl),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 20, color: AppColors.foreground),
          const SizedBox(height: 12),
          SectionTitle(title),
          const SizedBox(height: 4),
          Text(
            body,
            style: AppTypography.body(
              size: AppFontSize.xs,
              height: AppLineHeight.xs,
            ),
          ),
          if (footer != null) ...[const SizedBox(height: 12), footer!],
        ],
      ),
    );
  }
}
