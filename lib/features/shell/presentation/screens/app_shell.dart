import 'package:flutter/material.dart';

import '../../../../core/widgets/phone_frame.dart';
import '../widgets/bottom_tab_bar.dart';

/// Root layout for tabbed routes: the phone frame, the routed page, and the
/// bottom tab bar pinned over it.
class AppShell extends StatelessWidget {
  const AppShell({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: PhoneFrame(
        child: Stack(
          children: [
            Positioned.fill(child: child),
            const Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: BottomTabBar(),
            ),
          ],
        ),
      ),
    );
  }
}
