import 'package:moor/moor.dart';

@DataClassName('Team')
class Teams extends Table {
  TextColumn get id => text()();

  TextColumn get name => text().nullable()();

  // -----

  @override
  Set<Column> get primaryKey => {id};

  @override
  bool get withoutRowId => true;
}
