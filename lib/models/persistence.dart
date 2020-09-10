
import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutterdex/models/utils/table_creator.dart';
import 'package:path/path.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';

abstract class Serializable<T> { int id; }

abstract class Serializer<T extends Serializable> {

  Map<String, Object> serialize(T serializable);

}

abstract class Deserializer<T extends Serializable> {

  T deserialize(Map<String, Object> mapped);

}

abstract class LocalDatabase {

  String getPath();

  int getVersion();

  List<Table> getTables();

}

abstract class Table {

  TableStructure getStructure();

}

class TableStructure {

  final String name;
  final Map<String, FieldType> fields;

  TableStructure(this.name, this.fields);

}

enum FieldType {
  integer,
  real,
  text,
  blob
}

extension FieldTypeExtension on FieldType {

  String get name {
    switch (this) {
      case FieldType.integer: return 'INTEGER';
      case FieldType.real: return 'REAL';
      case FieldType.text: return 'TEXT';
      case FieldType.blob: return 'BLOB';
    }
  }

}

typedef DatabaseCallback<D> = Future<D> Function(Database);

abstract class LocalRepository {

  LocalDatabase getDatabase();

  Future<D> performAtDatabase<D>(DatabaseCallback<D> onDatabaseOpened) {
    return _open(getDatabase()).then(onDatabaseOpened);
  }

  @protected
  Future<int> insert<D extends Serializable>(D data, Table table, Serializer<D> serializer) =>
    performAtDatabase((db) =>
      db.insert(
        table.getStructure().name,
        serializer.serialize(data),
        conflictAlgorithm: ConflictAlgorithm.replace
      )
    );

  @protected
  Future<List<D>> get<D extends Serializable>(Table table, Deserializer<D> deserializer) =>
    performAtDatabase((db) =>
      db.query(
        table.getStructure().name
      ).then((result) =>
        Future.value(List.generate(result.length, (i) => deserializer.deserialize(result[i])))
      )
    );

  @protected
  Future<int> update<D extends Serializable>(D data, Table table, Serializer serializer) =>
    performAtDatabase((db) =>
      db.update(
        table.getStructure().name,
        serializer.serialize(data),
        where: 'id = ?',
        whereArgs: [data.id]
      )
    );

  @protected
  Future<int> delete<D extends Serializable>(D data, Table table) =>
    performAtDatabase((db) =>
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

typedef PersistenceCallback<D> = Future<D> Function(SharedPreferences);

class Persistence {

  static Future<SharedPreferences> _getPersistence() async => SharedPreferences.getInstance();

  static Future<D> _performAtPersistenceLayer<D>(PersistenceCallback<D> onPersistenceReady) {
    return _getPersistence().then(onPersistenceReady);
  }

  static void save(String string) => _performAtPersistenceLayer((persistence) {
    // TODO
  });

}