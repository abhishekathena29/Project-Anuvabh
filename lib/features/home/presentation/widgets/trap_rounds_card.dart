import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import '../../../../core/theme/app_colors.dart';
import 'info_card.dart';

class TrapRoundsCard extends StatelessWidget {
  const TrapRoundsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const InfoCard(
      color: AppColors.blush,
      icon: LucideIcons.flame300,
      title: 'Trap rounds',
      body:
          'Some questions are built around common misconceptions. When a team falls for one, the '
          'discussion that follows is the lesson. Answers need a justification to score.',
    );
  }
}
