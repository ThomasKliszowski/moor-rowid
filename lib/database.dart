import 'package:moor/moor.dart';

import 'team.dart';

part 'database.moor.dart';

@UseMoor(tables: [Teams])
class Database extends _$Database {
  Database(QueryExecutor e) : super(e);
  Database.connect(DatabaseConnection c) : super.connect(c);

  @override
  int get schemaVersion => 2;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onUpgrade: (migrator, from, to) async {
          if (from < 2) {
            migrator.alterTable(TableMigration(teams));
          }
        },
        beforeOpen: (details) async {
          await customStatement('PRAGMA foreign_keys = ON');
        },
      );
}
