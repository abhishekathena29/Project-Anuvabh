import 'dart:ui';

import 'subject.dart';

class Game {
  const Game({
    required this.title,
    required this.subject,
    required this.base,
    required this.tone,
    required this.minutes,
  });

  final String title;
  final Subject subject;

  /// The familiar classroom game this activity is built on.
  final String base;

  /// Pastel badge colour.
  final Color tone;
  final int minutes;

  /// Two-letter badge text (`g.base.slice(0, 2)`).
  String get badge => base.length <= 2 ? base : base.substring(0, 2);

  String get subtitle => '${subject.label} · based on $base · $minutes min';
}
