import 'package:flutter/foundation.dart';

import '../../data/models/featured_activity.dart';
import '../../data/models/game.dart';
import '../../data/models/lesson_stage.dart';
import '../../data/models/quick_stat.dart';
import '../../data/models/subject.dart';
import '../../data/repositories/home_repository.dart';

class HomeProvider extends ChangeNotifier {
  HomeProvider(HomeRepository repository)
    : todaysPeriod = repository.getTodaysPeriod(),
      quickStats = repository.getQuickStats(),
      subjects = repository.getSubjects(),
      stages = repository.getStages(),
      roles = repository.getRoles(),
      _games = repository.getGames();

  final FeaturedActivity todaysPeriod;
  final List<QuickStat> quickStats;
  final List<Subject> subjects;
  final List<LessonStage> stages;
  final List<String> roles;
  final List<Game> _games;

  Subject _selectedSubject = Subject.all;
  Subject get selectedSubject => _selectedSubject;

  /// `games.filter((g) => subject === "All" || g.subject === subject)`
  List<Game> get filteredGames => _selectedSubject == Subject.all
      ? _games
      : _games.where((g) => g.subject == _selectedSubject).toList();

  void selectSubject(Subject subject) {
    if (subject == _selectedSubject) return;
    _selectedSubject = subject;
    notifyListeners();
  }
}
