
import 'dart:async';

import 'package:path/path.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';

import 'database/persistence_database.dart';
import 'database/utils/table_creator.dart';

typedef PersistenceCallback<P> = Function(P);

abstract class Persistence<P> {

  Future<P> getPersistence();

  Future<R> perform<R>(PersistenceCallback<P> onPersistenceReady) {
    return getPersistence().then(onPersistenceReady);
  }

}

class DatabasePersistence extends Persistence<Database> {

  final LocalDatabase database;

  DatabasePersistence(this.database);

  @override
  Future<Database> getPersistence() => _open(database);

  Future<int> insert<D extends Serializable>(D data, Table table, Serializer<D> serializer) =>
    perform((db) =>
      db.insert(
        table.getStructure().name,
        serializer.serialize(data),
        conflictAlgorithm: ConflictAlgorithm.replace
      )
    );

  Future<List<D>> get<D extends Serializable>(Table table, Deserializer<D> deserializer) =>
    perform((db) =>
      db.query(
        table.getStructure().name
      ).then((result) =>
        Future.value(List.generate(result.length, (i) => deserializer.deserialize(result[i])))
      )
    );

  Future<int> update<D extends Serializable>(D data, Table table, Serializer serializer) =>
    perform((db) =>
      db.update(
        table.getStructure().name,
        serializer.serialize(data),
        where: 'id = ?',
        whereArgs: [data.id]
      )
    );

  Future<int> delete<D extends Serializable>(D data, Table table) =>
    perform((db) =>
      db.delete(
        table.getStructure().name,
        where: 'id = ?',
        whereArgs: [data.id]
      )
    );

  Future<Database> _open(LocalDatabase database) async => openDatabase(
      join(await getDatabasesPath(), database.getPath()),

      version: database.getVersion(),

      onCreate: (db, version) => _create(db, database.getTables())
  );

  void _create(Database db, List<Table> tables) {
    var query = StringBuffer();

    tables.forEach((table) { query.write(TableCreator(table.getStructure()).getCreationQuery()); });

    db.execute(query.toString());
  }

}

class SharedPreferencesPersistence extends Persistence<SharedPreferences> {

  @override
  Future<SharedPreferences> getPersistence() => SharedPreferences.getInstance();

  // TODO

}