import '../../../../core/theme/app_colors.dart';
import '../models/featured_activity.dart';
import '../models/game.dart';
import '../models/lesson_stage.dart';
import '../models/quick_stat.dart';
import '../models/subject.dart';

/// Static content for the home screen (same data as `src/routes/index.tsx`).
/// Swap this for an API-backed implementation later without touching the UI.
class HomeRepository {
  const HomeRepository();

  FeaturedActivity getTodaysPeriod() => const FeaturedActivity(
    badge: "Today's period",
    title: 'Motion Bingo',
    description:
        'Students already know Bingo — so the period goes to speed, velocity and acceleration.',
    minutes: 45,
  );

  List<QuickStat> getQuickStats() => const [
    QuickStat(value: '12', label: 'Games ready'),
    QuickStat(value: '3', label: 'Subjects'),
    QuickStat(value: '0', label: 'Devices needed'),
  ];

  List<Subject> getSubjects() => Subject.values;

  List<Game> getGames() => const [
    Game(
      title: 'Motion Bingo',
      subject: Subject.physics,
      base: 'Bingo',
      tone: AppColors.lilac,
      minutes: 45,
    ),
    Game(
      title: 'Vector Estimation Relay',
      subject: Subject.physics,
      base: 'Relay',
      tone: AppColors.butter,
      minutes: 40,
    ),
    Game(
      title: 'Gravitation Guess Who',
      subject: Subject.physics,
      base: 'Guess Who',
      tone: AppColors.mint,
      minutes: 45,
    ),
    Game(
      title: 'Energy Dominoes',
      subject: Subject.physics,
      base: 'Dominoes',
      tone: AppColors.blush,
      minutes: 40,
    ),
    Game(
      title: 'Periodic Table Battleship',
      subject: Subject.chemistry,
      base: 'Battleship',
      tone: AppColors.sage,
      minutes: 45,
    ),
    Game(
      title: 'Compound Rummy',
      subject: Subject.chemistry,
      base: 'Rummy',
      tone: AppColors.cream,
      minutes: 40,
    ),
    Game(
      title: 'Polynomial Snap',
      subject: Subject.maths,
      base: 'Snap',
      tone: AppColors.butter,
      minutes: 40,
    ),
    Game(
      title: 'Proof Jigsaw Relay',
      subject: Subject.maths,
      base: 'Jigsaw',
      tone: AppColors.lilac,
      minutes: 45,
    ),
  ];

  List<LessonStage> getStages() => const [
    LessonStage(number: '01', name: 'Open', note: 'Hook the concept in 5 min'),
    LessonStage(number: '02', name: 'Set up', note: 'Teams, roles, cards out'),
    LessonStage(number: '03', name: 'Play', note: 'Rounds with trap questions'),
    LessonStage(number: '04', name: 'Close', note: 'Score with justification'),
    LessonStage(number: '05', name: 'Reflect', note: 'Name the misconception'),
  ];

  List<String> getRoles() => const [
    'Recorder',
    'Runner',
    'Checker',
    'Challenger',
  ];
}
