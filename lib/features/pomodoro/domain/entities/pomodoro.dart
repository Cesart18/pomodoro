
import 'package:isar/isar.dart';

part 'pomodoro.g.dart';
@collection
class Pomodoro {

  Id? id;

  final DateTime initialDate;
  final DateTime finalDate;

  Pomodoro({
    required this.initialDate,
    required this.finalDate
});
 
}
