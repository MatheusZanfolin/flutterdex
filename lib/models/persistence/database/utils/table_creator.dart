
import '../persistence_database.dart';

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
    query.write(_getFieldsQuery(structure.fields));
    query.write(');');

    return query.toString();
  }

  String _getFieldsQuery(Map<String, FieldType> fields) {
    var query = StringBuffer();
    var iterator = fields.keys.iterator;

    var hasNext = iterator.moveNext();
    while (hasNext) {
      var field = iterator.current;
      var type = fields[field].name;

      _addFieldSignature(query, field, type);
      _addKeySignature(query, field);

      hasNext = iterator.moveNext();

      _addComma(query, hasNext);
    }

    return query.toString();
  }

  void _addFieldSignature(StringBuffer query, String field, String type) {
    query.write('$field $type');
  }

  void _addKeySignature(StringBuffer query, String field) {
    if ('id' == field) {
      query.write(' PRIMARY KEY');
    }
  }

  void _addComma(StringBuffer query, bool hasNext) {
    if (hasNext) {
      query.write(', ');
    }
  }

}