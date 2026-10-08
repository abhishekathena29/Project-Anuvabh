import 'package:flutter/material.dart';

import '../constants/app_constants.dart';
import '../theme/app_colors.dart';
import '../theme/app_radius.dart';

/// Mirrors the outer layout of the React page:
/// `flex min-h-screen justify-center bg-secondary/40 p-0 sm:p-6` wrapping
/// `max-w-[420px] bg-background shadow-xl sm:rounded-[2.5rem]`.
///
/// On phones the app fills the screen; on wider screens it is shown as a
/// centered, rounded "device" card.
class PhoneFrame extends StatelessWidget {
  const PhoneFrame({super.key, required this.child});

  final Widget child;

  static final Color _outerBackground = Color.alphaBlend(
    AppColors.secondary.withValues(alpha: 0.4),
    AppColors.background,
  );

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final framed = width >= AppConstants.framedBreakpoint;

    final app = ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: AppConstants.maxAppWidth),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppColors.background,
          borderRadius: framed ? AppRadius.circular(AppRadius.frame) : null,
          boxShadow: const [
            // shadow-xl
            BoxShadow(
              color: Color(0x1A000000),
              offset: Offset(0, 20),
              blurRadius: 25,
              spreadRadius: -5,
            ),
            BoxShadow(
              color: Color(0x1A000000),
              offset: Offset(0, 8),
              blurRadius: 10,
              spreadRadius: -6,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: framed
              ? AppRadius.circular(AppRadius.frame)
              : BorderRadius.zero,
          child: SizedBox.expand(child: child),
        ),
      ),
    );

    return ColoredBox(
      color: _outerBackground,
      child: framed
          ? SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Center(
                  // Inside the frame there are no system insets to respect.
                  child: MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    removeBottom: true,
                    removeLeft: true,
                    removeRight: true,
                    child: app,
                  ),
                ),
              ),
            )
          : Center(child: app),
    );
  }
}
