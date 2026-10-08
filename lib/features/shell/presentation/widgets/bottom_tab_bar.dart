import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_radius.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/widgets/frosted_surface.dart';
import '../../../../core/widgets/pressable.dart';
import '../../data/models/app_tab.dart';
import '../providers/bottom_nav_provider.dart';

/// Frosted bottom navigation with a lilac pill behind the active icon.
class BottomTabBar extends StatelessWidget {
  const BottomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    final nav = context.watch<BottomNavProvider>();
    final bottomInset = MediaQuery.paddingOf(context).bottom;

    return FrostedSurface(
      color: AppColors.background.withValues(alpha: 0.9),
      border: const Border(top: BorderSide(color: AppColors.border)),
      child: Padding(
        padding: EdgeInsets.fromLTRB(12, 8, 12, 12 + bottomInset),
        child: Row(
          children: [
            for (final tab in AppTab.values)
              Expanded(
                child: _TabButton(
                  tab: tab,
                  active: nav.current == tab,
                  onTap: () => context.read<BottomNavProvider>().select(tab),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _TabButton extends StatelessWidget {
  const _TabButton({
    required this.tab,
    required this.active,
    required this.onTap,
  });

  final AppTab tab;
  final bool active;
  final VoidCallback onTap;

  static const _duration = Duration(milliseconds: 150);

  @override
  Widget build(BuildContext context) {
    final color = active ? AppColors.foreground : AppColors.mutedForeground;

    return Pressable(
      onTap: onTap,
      semanticLabel: tab.label,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedContainer(
              duration: _duration,
              width: 48,
              height: 32,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: active
                    ? AppColors.lilac
                    : AppColors.lilac.withValues(alpha: 0),
                borderRadius: AppRadius.circular(AppRadius.full),
              ),
              child: Icon(
                active ? tab.activeIcon : tab.icon,
                size: 18,
                color: color,
              ),
            ),
            const SizedBox(height: 4),
            AnimatedDefaultTextStyle(
              duration: _duration,
              style: AppTypography.body(
                size: AppFontSize.xxs,
                height: AppLineHeight.xxs,
                weight: FontWeight.w500,
                color: color,
              ),
              child: Text(tab.label),
            ),
          ],
        ),
      ),
    );
  }
}
