import 'package:flutter/widgets.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

/// Bottom tab bar entries. Each tab carries a regular (1.75 stroke) and an
/// active (≈2.2 stroke) icon to mirror the React `strokeWidth` switch.
enum AppTab {
  home('Home', LucideIcons.house300, LucideIcons.house400),
  games('Games', LucideIcons.compass300, LucideIcons.compass400),
  classroom('Class', LucideIcons.users300, LucideIcons.users400),
  me('Me', LucideIcons.user300, LucideIcons.user400);

  const AppTab(this.label, this.icon, this.activeIcon);

  final String label;
  final IconData icon;
  final IconData activeIcon;
}
