import 'package:hive/hive.dart';

initHiveBoxes() async {
  await Hive.openBox('user');
}
