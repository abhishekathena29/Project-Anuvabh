import 'package:go_router/go_router.dart';

import '../../features/errors/presentation/screens/not_found_screen.dart';
import '../../features/home/presentation/screens/home_screen.dart';
import '../../features/shell/presentation/screens/app_shell.dart';
import 'app_routes.dart';

/// Equivalent of the TanStack route tree:
///   __root.tsx  -> [AppShell] (app frame + bottom tab bar)
///   index.tsx   -> `/` [HomeScreen]
///   notFound    -> [NotFoundScreen]
final GoRouter appRouter = GoRouter(
  initialLocation: AppRoutes.home,
  routes: [
    ShellRoute(
      builder: (context, state, child) => AppShell(child: child),
      routes: [
        GoRoute(
          path: AppRoutes.home,
          name: AppRouteNames.home,
          pageBuilder: (context, state) =>
              const NoTransitionPage(child: HomeScreen()),
        ),
      ],
    ),
  ],
  errorBuilder: (context, state) => const NotFoundScreen(),
);
