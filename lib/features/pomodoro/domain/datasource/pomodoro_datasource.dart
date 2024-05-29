
  import '../domain.dart';

  abstract class PomodoroDatasource {

    Future<void> addPomodoro( Pomodoro pomodoro );

    Stream<List<Pomodoro>> getAllPomodoros();

  }