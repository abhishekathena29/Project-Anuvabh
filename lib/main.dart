import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app.dart';
import 'features/errors/presentation/screens/error_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Friendly error page in release builds; keep Flutter's detailed
  // red screen while developing.
  if (kReleaseMode) {
    ErrorWidget.builder = (details) => ErrorScreen(error: details.exception);
  }

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );

  runApp(const AnubhavApp());
}
