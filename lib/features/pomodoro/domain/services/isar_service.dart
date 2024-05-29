import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pomodoro/features/pomodoro/domain/domain.dart';

class IsarService {
  late Future<Isar> db;

  IsarService() {
    db = openDB();
  }

  Future<Isar> openDB() async {
    final dir = await getApplicationDocumentsDirectory();
    final isar = await Isar.open(
      [ PomodoroSchema ],
      directory: dir.path,
    );
    return isar;
  }
}
