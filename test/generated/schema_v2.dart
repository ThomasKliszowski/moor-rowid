// GENERATED CODE, DO NOT EDIT BY HAND.
import 'package:moor/moor.dart';

class _Teams extends Table with TableInfo {
  final GeneratedDatabase _db;
  final String _alias;
  _Teams(this._db, [this._alias]);
  GeneratedTextColumn _id;
  GeneratedTextColumn get id => _id ??= _constructId();
  GeneratedTextColumn _constructId() {
    return GeneratedTextColumn(
      'id',
      $tableName,
      false,
    );
  }

  GeneratedTextColumn _name;
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn(
      'name',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  _Teams get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'teams';
  @override
  final String actualTableName = 'teams';
  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Null map(Map<String, dynamic> data, {String tablePrefix}) {
    return null;
  }

  @override
  _Teams createAlias(String alias) {
    return _Teams(_db, alias);
  }
}

class DatabaseAtV2 extends GeneratedDatabase {
  DatabaseAtV2(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  _Teams _teams;
  _Teams get teams => _teams ??= _Teams(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [teams];
  @override
  int get schemaVersion => 2;
}
