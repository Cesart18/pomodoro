
  import '../domain.dart';

  abstract class PomodoroRepository {

    Future<void> addPomodoro( Pomodoro pomodoro );

    Stream<List<Pomodoro>> getAllPomodoros();

  }