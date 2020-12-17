import 'package:moor_generator/api/migrations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'generated/schema.dart';
import 'package:foo/database.dart';

void main() {
  SchemaVerifier verifier;

  Future<void> _verifyMigration(int from, int to) async {
    final connection = await verifier.startAt(from);
    final db = Database.connect(connection);
    await verifier.migrateAndValidate(db, to);
  }

  setUpAll(() {
    verifier = SchemaVerifier(GeneratedHelper());
  });

  group('migrations:', () {
    test('upgrade from v1 to v2', () => _verifyMigration(1, 2));
  });
}
