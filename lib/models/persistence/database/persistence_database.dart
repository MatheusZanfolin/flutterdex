
abstract class Serializable {

  final int id;

  Serializable(this.id);

}

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

  final TableStructure structure;

  Table(this.structure);

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