
import 'package:flutterdex/models/persistence.dart';

class TableCreator {

  final query = StringBuffer();

  TableCreator(TableStructure structure) {
    query.write(_getCreationQuery(structure));
  }

  String getCreationQuery() => query.toString();

  String _getCreationQuery(TableStructure structure) {
    var query = StringBuffer();

    structure.fields.putIfAbsent('id', () => FieldType.integer);

    query.write('CREATE TABLE ${structure.name}(');
    query.write(_getFieldsQuery(structure));
    query.write(');');

    return query.toString();
  }

  String _getFieldsQuery(TableStructure structure) {
    var query = StringBuffer();
    var fields = structure.fields.keys.iterator;

    var hasNext = fields.moveNext();
    while (hasNext) {
      var field = fields.current;
      var type = _getTypeName(structure.fields[field]);

      _addFieldSignature(query, field, type);
      _addKeySignature(query, field);

      hasNext = fields.moveNext();
      if (hasNext) {
        query.write(', ');
      }
    }

    return query.toString();
  }

  String _getTypeName(FieldType type) {
    switch (type) {
      case FieldType.integer: return 'INTEGER';
      case FieldType.real: return 'REAL';
      case FieldType.text: return 'TEXT';
      default: return 'BLOB';
    }
  }

  void _addKeySignature(StringBuffer query, String field) {
    if ('id' == field) {
      query.write(' PRIMARY KEY');
    }
  }

  void _addFieldSignature(StringBuffer query, String field, String type) {
    query.write('$field $type');
  }

}